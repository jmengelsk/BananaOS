.class public final Lcom/android/server/wm/WallpaperController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mComputeMaxZoomOutFunction:Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;

.field public mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

.field public final mFindWallpaperTargetFunction:Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;

.field public mLastFrozen:Z

.field public mLastWallpaperZoomOut:F

.field public mMaxWallpaperScale:F

.field public mMinWallpaperScale:F

.field public mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

.field public final mRemoteWallpaperAnimAreaMap:Ljava/util/HashMap;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field public mWallpaperDrawState:I

.field public mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field public final mWallpaperTokens:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    new-instance v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v0, v3, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    iput-object v0, v3, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    iput-object v3, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    iput-boolean v1, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    iput-object v0, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    iput-boolean v1, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    iput-object v2, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    new-instance v0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WallpaperController;)V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WallpaperController;)V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mComputeMaxZoomOutFunction:Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda2;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mRemoteWallpaperAnimAreaMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1050137

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/server/wm/WallpaperController;->mMinWallpaperScale:F

    const p2, 0x1050136

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    const p0, 0x1110210

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    return-void
.end method

.method public static dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;F)V
    .locals 2

    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "NA"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final adjustWallpaperWindows()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    iget-object v9, v0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v1, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    iput-object v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    iput-boolean v8, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mNeedsShowWhenLockedWallpaper:Z

    iput-object v2, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    iput-boolean v8, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    iput-boolean v8, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    iget-object v1, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    iget-object v4, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mNaturalSwitchingController:Lcom/android/server/wm/NaturalSwitchingController;

    iget-boolean v4, v4, Lcom/android/server/wm/NaturalSwitchingController;->mNaturalSwitchingRunning:Z

    const/4 v10, 0x1

    if-eqz v4, :cond_0

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-boolean v3, v3, Lcom/android/server/wm/MultiTaskingController;->mIsMinimalBatteryUse:Z

    if-nez v3, :cond_0

    iput-boolean v10, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    :cond_0
    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v10

    :goto_0
    sget-object v11, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    if-ltz v3, :cond_a

    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WallpaperWindowToken;

    iget-boolean v5, v4, Lcom/android/server/wm/WallpaperWindowToken;->mShowWhenLocked:Z

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_WALLPAPER_POLICY:Z

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperWindowToken;->canShowInCurrentDevice()Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v10

    :goto_1
    if-ltz v6, :cond_9

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/WindowState;

    iget-boolean v13, v12, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v13, :cond_2

    move-object/from16 v17, v11

    goto :goto_4

    :cond_2
    iget-object v13, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    if-eqz v5, :cond_3

    iget-object v14, v13, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v14, :cond_4

    :cond_3
    move-object/from16 v17, v11

    goto :goto_3

    :cond_4
    if-eq v14, v12, :cond_5

    aget-boolean v14, v11, v8

    if-eqz v14, :cond_5

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v13, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    move-object/from16 v17, v11

    const-wide v10, 0x605add785e27328bL    # 1.4408093641668366E156

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v2, v10, v11, v8, v14}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    move-object/from16 v17, v11

    :goto_2
    iput-object v12, v13, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    goto :goto_4

    :goto_3
    if-nez v5, :cond_8

    iget-object v2, v13, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    if-eq v2, v12, :cond_7

    aget-boolean v2, v17, v8

    if-eqz v2, :cond_7

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v10, v13, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v14, 0x399c7a35ffd03f3cL    # 3.5101088849872048E-31

    filled-new-array {v2, v10}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v11, v14, v15, v8, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_7
    iput-object v12, v13, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    :cond_8
    :goto_4
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v11, v17

    const/4 v2, 0x0

    const/4 v10, 0x1

    goto :goto_1

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, -0x1

    const/4 v2, 0x0

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_a
    move-object/from16 v17, v11

    iget-object v2, v0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    iget-boolean v2, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mNeedsShowWhenLockedWallpaper:Z

    if-eqz v2, :cond_b

    iput-boolean v3, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    :cond_b
    iget-object v2, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_e

    iget-boolean v2, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-eqz v2, :cond_e

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v2}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isKeyguardLockedOrAodShowing()Z

    move-result v2

    goto :goto_6

    :cond_c
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v2

    :goto_6
    iget-object v3, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    if-nez v2, :cond_d

    iget-object v2, v3, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_d

    goto :goto_7

    :cond_d
    iget-object v2, v3, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    :goto_7
    iput-object v2, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    :cond_e
    iget-object v2, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/4 v4, 0x3

    if-eq v3, v2, :cond_1c

    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_f

    if-ne v3, v2, :cond_f

    goto/16 :goto_d

    :cond_f
    const/16 v16, 0x1

    aget-boolean v3, v17, v16

    if-eqz v3, :cond_10

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v10, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v11, -0x340f41839ad4cc1aL    # -6.569020556411756E57

    filled-new-array {v3, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10, v11, v12, v8, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_10
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iput-object v2, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v3, :cond_11

    if-eqz v2, :cond_11

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;)V

    :cond_11
    if-eqz v2, :cond_1b

    if-nez v3, :cond_12

    :goto_8
    goto/16 :goto_c

    :cond_12
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v5

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v6

    const/16 v16, 0x1

    aget-boolean v10, v17, v16

    if-eqz v10, :cond_13

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v13, 0x4e10cf5a90ab34e7L    # 1.132990118440253E68

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v12, v13, v14, v8, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_13
    if-eqz v6, :cond_1b

    if-nez v5, :cond_14

    goto :goto_8

    :cond_14
    new-instance v5, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda3;

    invoke-direct {v5, v3}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v7, v5}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-nez v5, :cond_15

    goto :goto_8

    :cond_15
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_16

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-nez v5, :cond_16

    const/4 v5, 0x1

    goto :goto_9

    :cond_16
    move v5, v8

    :goto_9
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_17

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v6

    if-nez v6, :cond_17

    const/4 v6, 0x1

    :goto_a
    const/16 v16, 0x1

    goto :goto_b

    :cond_17
    move v6, v8

    goto :goto_a

    :goto_b
    aget-boolean v10, v17, v16

    if-eqz v10, :cond_18

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    filled-new-array {v10, v13, v11, v14}, [Ljava/lang/Object;

    move-result-object v10

    const-wide v13, 0x69f347bd77e2314cL    # 2.3612905130085716E202

    const/16 v11, 0xcc

    invoke-static {v12, v13, v14, v11, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_18
    iput-object v3, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_1a

    if-nez v6, :cond_1a

    const/16 v16, 0x1

    aget-boolean v5, v17, v16

    if-eqz v5, :cond_19

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v10, -0x3c4cd0cffd3dc73cL    # -1.3823763990325996E18

    const/4 v6, 0x0

    invoke-static {v5, v10, v11, v8, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_19
    iput-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    :cond_1a
    iput-object v2, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    :cond_1b
    :goto_c
    const/4 v10, 0x0

    goto :goto_f

    :cond_1c
    :goto_d
    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v3, :cond_1d

    goto/16 :goto_8

    :cond_1d
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v3

    if-nez v3, :cond_1b

    const/16 v16, 0x1

    aget-boolean v3, v17, v16

    if-eqz v3, :cond_1e

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x304118fe7ad8c55bL    # -1.3977537621012356E76

    const/4 v10, 0x0

    invoke-static {v3, v5, v6, v8, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_e

    :cond_1e
    const/4 v10, 0x0

    :goto_e
    iput-object v10, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    iput-object v2, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    :goto_f
    iget-object v2, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WallpaperController;->getTokenForTarget(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v2

    if-eqz v2, :cond_1f

    const/4 v11, 0x1

    goto :goto_10

    :cond_1f
    move v11, v8

    :goto_10
    if-eqz v11, :cond_23

    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v5, v3, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/4 v6, 0x0

    cmpl-float v12, v5, v6

    if-ltz v12, :cond_20

    iput v5, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    iget v5, v3, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v5, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    :cond_20
    iget v5, v3, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_21

    iput v5, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    iget v5, v3, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v5, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    :cond_21
    iget v5, v3, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_22

    iput v5, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    :cond_22
    iget v3, v3, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v3, v6, :cond_23

    iput v3, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    :cond_23
    iget-object v2, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerFlags;->mEnsureWallpaperInTransitions:Z

    if-eqz v2, :cond_2a

    iget-object v2, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_24

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v3, :cond_2a

    :cond_24
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    goto :goto_11

    :cond_25
    move v2, v8

    :goto_11
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    const-string/jumbo v5, "WindowManager"

    if-eqz v3, :cond_27

    if-eqz v11, :cond_27

    if-nez v2, :cond_27

    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_27

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetWallpaperLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_27

    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v6, v4, :cond_26

    const-string v2, "Even if the starting window requests invisible, The wallpaper to be visible from an activity with wallpaper letterbox."

    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    const/4 v2, 0x1

    goto :goto_13

    :cond_26
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_27

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetWallpaperLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_27

    const-string v2, "Even if the activity requests invisible, The wallpaper to be visible from a below activity with wallpaper letterbox."

    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_27
    :goto_13
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v3, :cond_28

    if-eqz v11, :cond_28

    if-nez v2, :cond_28

    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v3, v3, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v3, :cond_28

    invoke-virtual {v3, v4}, Lcom/android/server/wm/Transition;->shouldShowWallpaperForSplitTransition(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_28

    const-string/jumbo v2, "adjustWallpaperWindows: keep visible, reason=split_transit"

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_28
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v3, :cond_29

    if-eqz v11, :cond_29

    if-nez v2, :cond_29

    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v3, v3, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isInKeyguardTransition()Z

    move-result v3

    if-eqz v3, :cond_29

    const-string/jumbo v2, "adjustWallpaperWindows: keep visible, reason=keyguard_transit"

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_14

    :cond_29
    move v3, v2

    goto :goto_14

    :cond_2a
    move v3, v11

    :goto_14
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v2}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isKeyguardLockedOrAodShowing()Z

    move-result v2

    :goto_15
    const/16 v16, 0x1

    goto :goto_16

    :cond_2b
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v2

    goto :goto_15

    :goto_16
    aget-boolean v4, v17, v16

    if-eqz v4, :cond_2c

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v12, 0x39249a0d81e31e2L

    const/16 v6, 0xf

    invoke-static {v4, v12, v13, v6, v5}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2c
    iget-object v4, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    if-nez v2, :cond_2d

    iget-object v2, v4, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_2d

    goto :goto_17

    :cond_2d
    iget-object v2, v4, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    :goto_17
    if-nez v2, :cond_2e

    move-object v2, v10

    goto :goto_18

    :cond_2e
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v2

    :goto_18
    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v16, 0x1

    add-int/lit8 v4, v4, -0x1

    :goto_19
    if-ltz v4, :cond_36

    iget-object v5, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WallpaperWindowToken;

    if-eqz v3, :cond_2f

    if-ne v5, v2, :cond_2f

    const/4 v6, 0x1

    goto :goto_1a

    :cond_2f
    move v6, v8

    :goto_1a
    iget-boolean v10, v5, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eq v10, v6, :cond_31

    aget-boolean v10, v17, v8

    if-eqz v10, :cond_30

    iget-object v10, v5, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v12, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    filled-new-array {v10, v13}, [Ljava/lang/Object;

    move-result-object v10

    const-wide v13, -0x6e2447dcd5a9cbebL

    const/16 v15, 0xc

    invoke-static {v12, v13, v14, v15, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_30
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibility(Z)V

    :cond_31
    iget-object v10, v5, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v10, v10, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_34

    if-eqz v10, :cond_34

    iget-object v12, v10, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v12, :cond_32

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v12

    if-eqz v12, :cond_33

    :cond_32
    iget-object v12, v10, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v12

    if-eqz v12, :cond_33

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v5, v10}, Lcom/android/server/wm/WallpaperWindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    goto :goto_1b

    :cond_33
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v10, :cond_34

    iget-object v10, v5, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_34
    :goto_1b
    iget-object v10, v5, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v10, v5}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v10

    if-eqz v10, :cond_35

    goto :goto_1c

    :cond_35
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WallpaperWindowToken;->setVisible$1(Z)V

    :goto_1c
    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    :cond_36
    const/16 v16, 0x1

    aget-boolean v2, v17, v16

    if-eqz v2, :cond_38

    iget v2, v7, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v2, v2

    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v1}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result v1

    if-nez v1, :cond_37

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isKeyguardLockedOrAodShowing()Z

    move-result v1

    goto :goto_1d

    :cond_37
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v1

    :goto_1d
    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v2, 0x66cfee6d654a358fL    # 1.736699569115551E187

    const/16 v5, 0x3d

    invoke-static {v4, v2, v3, v5, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_38
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-eqz v10, :cond_39

    iget-object v1, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_39

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetWallpaperLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_39

    goto :goto_1f

    :cond_39
    if-eqz v11, :cond_3b

    iget-boolean v1, v0, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    iget-boolean v2, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    if-eq v1, v2, :cond_3b

    iput-boolean v2, v0, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    if-eqz v2, :cond_3a

    const-string/jumbo v1, "android.wallpaper.freeze"

    goto :goto_1e

    :cond_3a
    const-string/jumbo v1, "android.wallpaper.unfreeze"

    :goto_1e
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WallpaperController;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    :cond_3b
    :goto_1f
    if-eqz v10, :cond_3d

    iget-object v1, v7, Lcom/android/server/wm/DisplayContent;->mMultiTaskingAppCompatConfiguration:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;

    if-eqz v1, :cond_3d

    if-eqz v11, :cond_3c

    iget-boolean v2, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    if-eqz v2, :cond_3c

    move/from16 v10, v16

    goto :goto_20

    :cond_3c
    move v10, v8

    :goto_20
    invoke-virtual {v1, v10}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->onAdjustWallpaperWindows(Z)V

    :cond_3d
    aget-boolean v1, v17, v8

    if-eqz v1, :cond_3e

    iget-object v1, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x775400407b09c9a8L    # -6.783856069054106E-267

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v4, v8, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_3e
    return-void
.end method

.method public canScreenshotWallpaper()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public final canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast p0, Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    const/4 v0, 0x0

    const-string/jumbo v1, "WindowManager"

    if-nez p0, :cond_0

    const-string p0, "Attempted to take screenshot while display was off."

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p0, "No visible wallpaper to screenshot"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "displayId="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const-string/jumbo v2, "mWallpaperTarget="

    invoke-static {v1, p1, v0, v2}, Lcom/android/server/am/BroadcastStats$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLastWallpaperZoomOut="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPrevWallpaperTarget="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mFindResults"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  mTopHideWhenLockedWallpaper="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    iget-object v2, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    iget-object v2, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    mTopHideWhenLockedWallpaper.Token="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    iget-object v2, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mTopShowWhenLockedWallpaper="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    iget-object v2, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    iget-object v2, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    mTopShowWhenLockedWallpaper.Token="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    iget-object v1, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "token "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_WALLPAPER_POLICY:Z

    if-eqz v3, :cond_3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  isForPrimaryDevice="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperWindowToken;->isForPrimaryDevice()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  canShowInCurrentDevice="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperWindowToken;->canShowInCurrentDevice()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3
    iget v3, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    const-string/jumbo v4, "mWallpaperX"

    invoke-static {p1, v4, v3}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;F)V

    const-string/jumbo v3, "mWallpaperY"

    iget v4, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    invoke-static {p1, v3, v4}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;F)V

    const-string/jumbo v3, "mWallpaperXStep"

    iget v4, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    invoke-static {p1, v3, v4}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;F)V

    const-string/jumbo v3, "mWallpaperYStep"

    iget v4, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    invoke-static {p1, v3, v4}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;F)V

    iget v3, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    int-to-float v3, v3

    const-string/jumbo v4, "mWallpaperDisplayOffsetX"

    invoke-static {p1, v4, v3}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;F)V

    iget v2, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    int-to-float v2, v2

    const-string/jumbo v3, "mWallpaperDisplayOffsetY"

    invoke-static {p1, v3, v2}, Lcom/android/server/wm/WallpaperController;->dumpValue(Ljava/io/PrintWriter;Ljava/lang/String;F)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final getTokenForTarget(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WallpaperWindowToken;
    .locals 2

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_2
    iget-object p1, v1, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p1}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object p0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    :goto_2
    if-nez p1, :cond_6

    :goto_3
    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object p0

    return-object p0
.end method

.method public final getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hideWallpapers(Lcom/android/server/wm/WindowState;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    iget-boolean v2, v1, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, -0x48eb40cce662c01dL    # -2.3258049552014316E-43

    filled-new-array {v2, v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v8, v9, v10, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibility(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final isWallpaperVisible()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final screenshotWallpaperLocked(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget p1, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    neg-int p1, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    neg-int v2, v2

    invoke-virtual {p0, p1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_0
    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    iget-boolean v3, p1, Lcom/android/server/wm/WindowToken;->mIsPortraitWindowToken:Z

    if-eqz v3, :cond_2

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {p1, p0, v2}, Landroid/window/ScreenCapture;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p1, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {p1, p0, v2}, Landroid/window/ScreenCapture;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object p0

    :goto_1
    if-nez p0, :cond_3

    const-string/jumbo p0, "WindowManager"

    const-string p1, "Failed to screenshot wallpaper"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    invoke-virtual {p0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    invoke-virtual {p0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v9, p6

    :goto_1
    if-ltz v2, :cond_0

    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    :try_start_0
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v9}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x0

    :catch_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setMaxWallpaperScale(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    return-void
.end method

.method public setMinWallpaperScale(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/WallpaperController;->mMinWallpaperScale:F

    return-void
.end method

.method public setShouldOffsetWallpaperCenter(Z)V
    .locals 0

    return-void
.end method

.method public final startRemoteWallpaperAnimation(Landroid/os/IBinder;ILandroid/view/IRemoteAnimationRunner;)Landroid/view/SurfaceControl;
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mRemoteWallpaperAnimAreaMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayAreaPolicy:Lcom/android/server/wm/DisplayAreaPolicy;

    check-cast v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v2, Lcom/android/server/wm/DisplayAreaPolicy;->mRoot:Lcom/android/server/wm/DisplayContent;

    invoke-static {v4, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->getDisplayAreas(Lcom/android/server/wm/RootDisplayArea;Ljava/util/List;)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget-object v6, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/RootDisplayArea;

    invoke-static {v6, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->getDisplayAreas(Lcom/android/server/wm/RootDisplayArea;Ljava/util/List;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayArea;

    move-object v3, v2

    goto :goto_1

    :cond_2
    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mRemoteWallpaperAnimAreaMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    new-instance v5, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;

    move-object v4, p0

    move v7, p2

    move-object v8, p3

    move-object v6, v3

    move-object v3, v5

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/WallpaperController$RemoteWallpaperAnimationAdapter;-><init>(Lcom/android/server/wm/WallpaperController;Landroid/os/IBinder;Lcom/android/server/wm/DisplayArea;ILandroid/view/IRemoteAnimationRunner;)V

    move-object p1, v3

    move-object v3, v6

    new-instance v8, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v5}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WallpaperController;Landroid/os/IBinder;)V

    const/4 v6, 0x0

    const/16 v7, 0x200

    move-object v5, p1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayArea;->getAnimationLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    return-object v1
.end method

.method public final updateWallpaperOffset(Lcom/android/server/wm/WindowState;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v5, v3

    int-to-float v6, v4

    div-float v7, v5, v6

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v3

    new-instance v4, Landroid/graphics/Point;

    iget v9, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v10, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-direct {v4, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    iget-object v9, v3, Lcom/android/server/wm/WallpaperWindowToken;->mCropHints:Landroid/util/SparseArray;

    iget v10, v4, Landroid/graphics/Point;->x:I

    iget-object v11, v0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v13, 0x1

    if-lez v10, :cond_3

    iget v10, v4, Landroid/graphics/Point;->y:I

    if-gtz v10, :cond_0

    goto :goto_2

    :cond_0
    iget-object v10, v0, Lcom/android/server/wm/WallpaperController;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    if-eqz v10, :cond_1

    goto :goto_0

    :cond_1
    iget-object v10, v11, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-class v14, Landroid/view/WindowManager;

    invoke-virtual {v10, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    new-instance v14, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    invoke-direct {v14, v10, v11}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;-><init>(Landroid/view/WindowManager;Landroid/content/res/Resources;)V

    iput-object v14, v0, Lcom/android/server/wm/WallpaperController;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    move-object v10, v14

    :goto_0
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v11

    if-ne v11, v13, :cond_2

    move v11, v13

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    invoke-static {v8, v10, v4, v9, v11}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    :goto_3
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v8, v8

    int-to-float v9, v9

    div-float v10, v8, v9

    cmpl-float v10, v10, v7

    if-ltz v10, :cond_4

    move v10, v13

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v11, :cond_5

    move v6, v14

    goto :goto_5

    :cond_5
    if-eqz v10, :cond_6

    div-float/2addr v6, v9

    iget v5, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    div-float/2addr v6, v5

    goto :goto_5

    :cond_6
    div-float/2addr v5, v8

    iget v6, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    div-float v6, v5, v6

    :goto_5
    if-eqz v10, :cond_7

    mul-float v5, v9, v7

    goto :goto_6

    :cond_7
    move v5, v8

    :goto_6
    if-eqz v10, :cond_8

    move v7, v9

    goto :goto_7

    :cond_8
    div-float v7, v8, v7

    :goto_7
    iget v10, v4, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    sub-float v11, v6, v14

    mul-float v15, v11, v5

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    float-to-int v15, v15

    add-int/2addr v10, v15

    iget v15, v4, Landroid/graphics/Rect;->top:I

    neg-int v15, v15

    mul-float/2addr v11, v7

    div-float v11, v11, v16

    float-to-int v11, v11

    add-int/2addr v15, v11

    sub-float/2addr v8, v5

    iget v5, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v8, v5

    float-to-int v5, v8

    sub-float/2addr v9, v7

    iget v7, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v9, v7

    float-to-int v7, v9

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v8

    if-ne v8, v13, :cond_9

    move v8, v13

    goto :goto_8

    :cond_9
    const/4 v8, 0x0

    :goto_8
    const/4 v9, 0x0

    if-eqz v8, :cond_a

    move v8, v14

    goto :goto_9

    :cond_a
    move v8, v9

    :goto_9
    iget v11, v3, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    cmpl-float v16, v11, v9

    if-ltz v16, :cond_b

    move v8, v11

    :cond_b
    iget v11, v3, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    cmpl-float v16, v11, v9

    const/high16 v17, -0x40800000    # -1.0f

    if-ltz v16, :cond_c

    goto :goto_a

    :cond_c
    move/from16 v11, v17

    :goto_a
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Configuration;->getLayoutDirection()I

    const/high16 v16, 0x3f000000    # 0.5f

    if-lez v5, :cond_d

    int-to-float v5, v5

    mul-float/2addr v5, v8

    add-float v5, v5, v16

    float-to-int v5, v5

    neg-int v5, v5

    :goto_b
    move/from16 v18, v9

    goto :goto_c

    :cond_d
    const/4 v5, 0x0

    goto :goto_b

    :goto_c
    iget v9, v3, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    const/high16 v12, -0x80000000

    if-eq v9, v12, :cond_e

    add-int/2addr v5, v9

    goto :goto_d

    :cond_e
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLayoutDirection()I

    :goto_d
    int-to-float v5, v5

    int-to-float v9, v10

    iget v10, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v9, v10

    add-float/2addr v9, v5

    float-to-int v5, v9

    iget v9, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v9, v9, v8

    if-nez v9, :cond_10

    iget v9, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_f

    goto :goto_e

    :cond_f
    const/4 v9, 0x0

    goto :goto_f

    :cond_10
    :goto_e
    iput v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v11, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move v9, v13

    :goto_f
    iget v10, v3, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    cmpl-float v11, v10, v18

    if-ltz v11, :cond_11

    goto :goto_10

    :cond_11
    move/from16 v10, v16

    :goto_10
    iget v11, v3, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    cmpl-float v18, v11, v18

    if-ltz v18, :cond_12

    goto :goto_11

    :cond_12
    move/from16 v11, v17

    :goto_11
    if-lez v7, :cond_13

    int-to-float v7, v7

    mul-float/2addr v7, v10

    add-float v7, v7, v16

    float-to-int v7, v7

    neg-int v7, v7

    goto :goto_12

    :cond_13
    const/4 v7, 0x0

    :goto_12
    iget v3, v3, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    if-eq v3, v12, :cond_14

    add-int/2addr v7, v3

    :cond_14
    int-to-float v3, v7

    int-to-float v7, v15

    iget v12, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v7, v12

    add-float/2addr v7, v3

    float-to-int v3, v7

    iget v7, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v7, v7, v10

    if-nez v7, :cond_15

    iget v7, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v7, v7, v11

    if-eqz v7, :cond_16

    :cond_15
    iput v10, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v11, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move v9, v13

    :cond_16
    iget v7, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    iget v11, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    invoke-static {v7, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_17

    iget v7, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    iput v7, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    move v9, v13

    :cond_17
    iget-boolean v7, v1, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    if-eqz v7, :cond_18

    iget v7, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    iget v11, v0, Lcom/android/server/wm/WallpaperController;->mMinWallpaperScale:F

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    sub-float/2addr v14, v7

    invoke-static {v11, v0, v14}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v14

    :cond_18
    mul-float/2addr v14, v6

    iget v0, v1, Lcom/android/server/wm/WindowState;->mXOffset:I

    if-ne v0, v5, :cond_19

    iget v0, v1, Lcom/android/server/wm/WindowState;->mYOffset:I

    if-ne v0, v3, :cond_19

    iget v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperScale:F

    invoke-static {v0, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_19

    const/4 v12, 0x0

    goto :goto_13

    :cond_19
    iput v5, v1, Lcom/android/server/wm/WindowState;->mXOffset:I

    iput v3, v1, Lcom/android/server/wm/WindowState;->mYOffset:I

    iput v14, v1, Lcom/android/server/wm/WindowState;->mWallpaperScale:F

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    move v12, v13

    :goto_13
    if-eqz v12, :cond_1a

    const-string/jumbo v0, "updateWallpaperOffset: offsetX="

    const-string v6, ", offsetY="

    const-string v7, ", wallpaperFrame="

    invoke-static {v5, v3, v0, v6, v7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", wBounds="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", dOffset=0, wpx="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", wpy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", zoom="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", win="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    if-eqz v9, :cond_1b

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1b

    :try_start_0
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v2, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iget v3, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iget v4, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iget v5, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iget v6, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    const/4 v7, 0x0

    move-object v1, v0

    invoke-interface/range {v1 .. v7}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFFZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1b
    return v12
.end method

.method public final updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->getTokenForTarget(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_2

    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    goto :goto_0

    :cond_2
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_3

    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    :cond_3
    :goto_0
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_4

    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    goto :goto_1

    :cond_4
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_5

    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    :cond_5
    :goto_1
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_6

    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    goto :goto_2

    :cond_6
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v1, v3, :cond_7

    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    :cond_7
    :goto_2
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v1, v3, :cond_8

    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    goto :goto_3

    :cond_8
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v1, v3, :cond_9

    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    :cond_9
    :goto_3
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_a

    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    goto :goto_4

    :cond_a
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_b

    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    :cond_b
    :goto_4
    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v1, v0, v2

    if-ltz v1, :cond_c

    iput v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    goto :goto_5

    :cond_c
    iget p1, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v0, p1, v2

    if-ltz v0, :cond_d

    iput p1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    :cond_d
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperOffset()V

    return-void
.end method
