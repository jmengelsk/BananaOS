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
    .registers 7

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
    .registers 5

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

    if-ltz p1, :cond_23

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_26

    :cond_23
    const-string/jumbo p1, "NA"

    :goto_26
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final adjustWallpaperWindows()V
    .registers 19

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

    if-eqz v4, :cond_2d

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    iget-boolean v3, v3, Lcom/android/server/wm/MultiTaskingController;->mIsMinimalBatteryUse:Z

    if-nez v3, :cond_2d

    iput-boolean v10, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    :cond_2d
    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v10

    :goto_34
    sget-object v11, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    if-ltz v3, :cond_c7

    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WallpaperWindowToken;

    iget-boolean v5, v4, Lcom/android/server/wm/WallpaperWindowToken;->mShowWhenLocked:Z

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_FOLD_WALLPAPER_POLICY:Z

    if-eqz v6, :cond_4e

    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperWindowToken;->canShowInCurrentDevice()Z

    move-result v6

    if-nez v6, :cond_4e

    goto/16 :goto_c1

    :cond_4e
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v10

    :goto_53
    if-ltz v6, :cond_c1

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/WindowState;

    iget-boolean v13, v12, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v13, :cond_62

    move-object/from16 v17, v11

    goto :goto_ba

    :cond_62
    iget-object v13, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    if-eqz v5, :cond_6a

    iget-object v14, v13, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v14, :cond_6d

    :cond_6a
    move-object/from16 v17, v11

    goto :goto_93

    :cond_6d
    if-eq v14, v12, :cond_8e

    aget-boolean v14, v11, v8

    if-eqz v14, :cond_8e

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v13, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    move-object/from16 v17, v11

    const-wide v10, 0x605add785e27328bL  # 1.4408093641668366E156

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v2, v10, v11, v8, v14}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_90

    :cond_8e
    move-object/from16 v17, v11

    :goto_90
    iput-object v12, v13, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    goto :goto_ba

    :goto_93
    if-nez v5, :cond_ba

    iget-object v2, v13, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_9a

    goto :goto_ba

    :cond_9a
    if-eq v2, v12, :cond_b8

    aget-boolean v2, v17, v8

    if-eqz v2, :cond_b8

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v10, v13, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v14, 0x399c7a35ffd03f3cL  # 3.5101088849872048E-31

    filled-new-array {v2, v10}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v11, v14, v15, v8, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_b8
    iput-object v12, v13, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    :cond_ba
    :goto_ba
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v11, v17

    const/4 v2, 0x0

    const/4 v10, 0x1

    goto :goto_53

    :cond_c1
    :goto_c1
    add-int/lit8 v3, v3, -0x1

    const/4 v2, 0x0

    const/4 v10, 0x1

    goto/16 :goto_34

    :cond_c7
    move-object/from16 v17, v11

    iget-object v2, v0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    iget-boolean v2, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mNeedsShowWhenLockedWallpaper:Z

    if-eqz v2, :cond_d5

    iput-boolean v3, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    :cond_d5
    iget-object v2, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_102

    iget-boolean v2, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-eqz v2, :cond_102

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v2}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result v2

    if-nez v2, :cond_f1

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isKeyguardLockedOrAodShowing()Z

    move-result v2

    goto :goto_f5

    :cond_f1
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v2

    :goto_f5
    iget-object v3, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    if-nez v2, :cond_fe

    iget-object v2, v3, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_fe

    goto :goto_100

    :cond_fe
    iget-object v2, v3, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    :goto_100
    iput-object v2, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    :cond_102
    iget-object v2, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/4 v4, 0x3

    if-eq v3, v2, :cond_1df

    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_111

    if-ne v3, v2, :cond_111

    goto/16 :goto_1df

    :cond_111
    const/16 v16, 0x1

    aget-boolean v3, v17, v16

    if-eqz v3, :cond_138

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

    const-wide v11, -0x340f41839ad4cc1aL  # -6.569020556411756E57

    filled-new-array {v3, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10, v11, v12, v8, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_138
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iput-object v2, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v3, :cond_146

    if-eqz v2, :cond_146

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;)V

    :cond_146
    if-eqz v2, :cond_1dd

    if-nez v3, :cond_14c

    :goto_14a
    goto/16 :goto_1dd

    :cond_14c
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v5

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v6

    const/16 v16, 0x1

    aget-boolean v10, v17, v16

    if-eqz v10, :cond_170

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v13, 0x4e10cf5a90ab34e7L  # 1.132990118440253E68

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v12, v13, v14, v8, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_170
    if-eqz v6, :cond_1dd

    if-nez v5, :cond_175

    goto :goto_14a

    :cond_175
    new-instance v5, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda3;

    invoke-direct {v5, v3}, Lcom/android/server/wm/WallpaperController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v7, v5}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-nez v5, :cond_181

    goto :goto_14a

    :cond_181
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_18d

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-nez v5, :cond_18d

    const/4 v5, 0x1

    goto :goto_18e

    :cond_18d
    move v5, v8

    :goto_18e
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_19c

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v6

    if-nez v6, :cond_19c

    const/4 v6, 0x1

    :goto_199
    const/16 v16, 0x1

    goto :goto_19e

    :cond_19c
    move v6, v8

    goto :goto_199

    :goto_19e
    aget-boolean v10, v17, v16

    if-eqz v10, :cond_1c2

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

    const-wide v13, 0x69f347bd77e2314cL  # 2.3612905130085716E202

    const/16 v11, 0xcc

    invoke-static {v12, v13, v14, v11, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1c2
    iput-object v3, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_1db

    if-nez v6, :cond_1db

    const/16 v16, 0x1

    aget-boolean v5, v17, v16

    if-eqz v5, :cond_1d9

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v10, -0x3c4cd0cffd3dc73cL  # -1.38237639903259955E18

    const/4 v6, 0x0

    invoke-static {v5, v10, v11, v8, v6}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1d9
    iput-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    :cond_1db
    iput-object v2, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    :cond_1dd
    :goto_1dd
    const/4 v10, 0x0

    goto :goto_202

    :cond_1df
    :goto_1df
    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v3, :cond_1e5

    goto/16 :goto_14a

    :cond_1e5
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result v3

    if-nez v3, :cond_1dd

    const/16 v16, 0x1

    aget-boolean v3, v17, v16

    if-eqz v3, :cond_1fd

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x304118fe7ad8c55bL  # -1.3977537621012356E76

    const/4 v10, 0x0

    invoke-static {v3, v5, v6, v8, v10}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_1fe

    :cond_1fd
    const/4 v10, 0x0

    :goto_1fe
    iput-object v10, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    iput-object v2, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    :goto_202
    iget-object v2, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WallpaperController;->getTokenForTarget(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v2

    if-eqz v2, :cond_20c

    const/4 v11, 0x1

    goto :goto_20d

    :cond_20c
    move v11, v8

    :goto_20d
    if-eqz v11, :cond_238

    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v5, v3, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/4 v6, 0x0

    cmpl-float v12, v5, v6

    if-ltz v12, :cond_21e

    iput v5, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    iget v5, v3, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v5, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    :cond_21e
    iget v5, v3, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_22a

    iput v5, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    iget v5, v3, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v5, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    :cond_22a
    iget v5, v3, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_232

    iput v5, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    :cond_232
    iget v3, v3, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v3, v6, :cond_238

    iput v3, v2, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    :cond_238
    iget-object v2, v7, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerFlags;->mEnsureWallpaperInTransitions:Z

    if-eqz v2, :cond_2ce

    iget-object v2, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_248

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v3, :cond_2ce

    :cond_248
    if-eqz v2, :cond_252

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_252

    const/4 v2, 0x1

    goto :goto_253

    :cond_252
    move v2, v8

    :goto_253
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    const-string/jumbo v5, "WindowManager"

    if-eqz v3, :cond_28f

    if-eqz v11, :cond_28f

    if-nez v2, :cond_28f

    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_28f

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetWallpaperLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_28f

    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v6, v4, :cond_279

    const-string v2, "Even if the starting window requests invisible, The wallpaper to be visible from an activity with wallpaper letterbox."

    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_277
    const/4 v2, 0x1

    goto :goto_28f

    :cond_279
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_28f

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetWallpaperLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_28f

    const-string v2, "Even if the activity requests invisible, The wallpaper to be visible from a below activity with wallpaper letterbox."

    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_277

    :cond_28f
    :goto_28f
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v3, :cond_2b0

    if-eqz v11, :cond_2b0

    if-nez v2, :cond_2b0

    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v3, v3, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v3, :cond_2b0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/Transition;->shouldShowWallpaperForSplitTransition(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_2b0

    const-string/jumbo v2, "adjustWallpaperWindows: keep visible, reason=split_transit"

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_2b0
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v3, :cond_2cc

    if-eqz v11, :cond_2cc

    if-nez v2, :cond_2cc

    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v3, v3, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isInKeyguardTransition()Z

    move-result v3

    if-eqz v3, :cond_2cc

    const-string/jumbo v2, "adjustWallpaperWindows: keep visible, reason=keyguard_transit"

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_2cf

    :cond_2cc
    move v3, v2

    goto :goto_2cf

    :cond_2ce
    move v3, v11

    :goto_2cf
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v2}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result v2

    if-nez v2, :cond_2e5

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isKeyguardLockedOrAodShowing()Z

    move-result v2

    :goto_2e2
    const/16 v16, 0x1

    goto :goto_2ea

    :cond_2e5
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v2

    goto :goto_2e2

    :goto_2ea
    aget-boolean v4, v17, v16

    if-eqz v4, :cond_306

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

    :cond_306
    iget-object v4, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    if-nez v2, :cond_30f

    iget-object v2, v4, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_30f

    goto :goto_311

    :cond_30f
    iget-object v2, v4, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    :goto_311
    if-nez v2, :cond_315

    move-object v2, v10

    goto :goto_31b

    :cond_315
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v2

    :goto_31b
    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v16, 0x1

    add-int/lit8 v4, v4, -0x1

    :goto_325
    if-ltz v4, :cond_397

    iget-object v5, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WallpaperWindowToken;

    if-eqz v3, :cond_335

    if-ne v5, v2, :cond_335

    const/4 v6, 0x1

    goto :goto_336

    :cond_335
    move v6, v8

    :goto_336
    iget-boolean v10, v5, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eq v10, v6, :cond_35b

    aget-boolean v10, v17, v8

    if-eqz v10, :cond_358

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

    :cond_358
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibility(Z)V

    :cond_35b
    iget-object v10, v5, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v10, v10, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v10, v10, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v6, :cond_388

    if-eqz v10, :cond_388

    iget-object v12, v10, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v12, :cond_36f

    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v12

    if-eqz v12, :cond_37d

    :cond_36f
    iget-object v12, v10, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v12

    if-eqz v12, :cond_37d

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v5, v10}, Lcom/android/server/wm/WallpaperWindowToken;->linkFixedRotationTransform(Lcom/android/server/wm/WindowToken;)V

    goto :goto_388

    :cond_37d
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v10, :cond_388

    iget-object v10, v5, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_388
    :goto_388
    iget-object v10, v5, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v10, v5}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v10

    if-eqz v10, :cond_391

    goto :goto_394

    :cond_391
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WallpaperWindowToken;->setVisible$1(Z)V

    :goto_394
    add-int/lit8 v4, v4, -0x1

    goto :goto_325

    :cond_397
    const/16 v16, 0x1

    aget-boolean v2, v17, v16

    if-eqz v2, :cond_3d4

    iget v2, v7, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v2, v2

    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {v1}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result v1

    if-nez v1, :cond_3b4

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isKeyguardLockedOrAodShowing()Z

    move-result v1

    goto :goto_3b8

    :cond_3b4
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v1

    :goto_3b8
    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v2, 0x66cfee6d654a358fL  # 1.736699569115551E187

    const/16 v5, 0x3d

    invoke-static {v4, v2, v3, v5, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_3d4
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-eqz v10, :cond_3e5

    iget-object v1, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_3e5

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->isPresetWallpaperLetterboxed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_3e5

    goto :goto_400

    :cond_3e5
    if-eqz v11, :cond_400

    iget-boolean v1, v0, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    iget-boolean v2, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    if-eq v1, v2, :cond_400

    iput-boolean v2, v0, Lcom/android/server/wm/WallpaperController;->mLastFrozen:Z

    if-eqz v2, :cond_3f5

    const-string/jumbo v1, "android.wallpaper.freeze"

    goto :goto_3f8

    :cond_3f5
    const-string/jumbo v1, "android.wallpaper.unfreeze"

    :goto_3f8
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WallpaperController;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    :cond_400
    :goto_400
    if-eqz v10, :cond_413

    iget-object v1, v7, Lcom/android/server/wm/DisplayContent;->mMultiTaskingAppCompatConfiguration:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$BlackLetterboxConfig;

    if-eqz v1, :cond_413

    if-eqz v11, :cond_40f

    iget-boolean v2, v9, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    if-eqz v2, :cond_40f

    move/from16 v10, v16

    goto :goto_410

    :cond_40f
    move v10, v8

    :goto_410
    invoke-virtual {v1, v10}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration;->onAdjustWallpaperWindows(Z)V

    :cond_413
    aget-boolean v1, v17, v8

    if-eqz v1, :cond_431

    iget-object v1, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WALLPAPER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x775400407b09c9a8L  # -6.783856069054106E-267

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v4, v8, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_431
    return-void
.end method

.method public canScreenshotWallpaper()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public final canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    check-cast p0, Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mScreenOnEarly:Z

    const/4 v0, 0x0

    const-string/jumbo v1, "WindowManager"

    if-nez p0, :cond_16

    const-string p0, "Attempted to take screenshot while display was off."

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_16
    if-nez p1, :cond_1f

    const-string/jumbo p0, "No visible wallpaper to screenshot"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1f
    const/4 p0, 0x1

    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 7

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

    if-eqz v1, :cond_3a

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPrevWallpaperTarget="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3a
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

    if-eqz v2, :cond_6b

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    mTopHideWhenLockedWallpaper.Token="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    iget-object v2, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mTopShowWhenLockedWallpaper="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    iget-object v2, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    iget-object v2, v2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_91

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    mTopShowWhenLockedWallpaper.Token="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    iget-object v1, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_91
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_99
    if-ltz v1, :cond_114

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

    if-eqz v3, :cond_df

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

    :cond_df
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

    goto :goto_99

    :cond_114
    return-void
.end method

.method public final getTokenForTarget(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WallpaperWindowToken;
    .registers 4

    if-nez p1, :cond_3

    goto :goto_47

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canShowWhenLocked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    if-nez v0, :cond_17

    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_1d

    :cond_17
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result p1

    if-nez p1, :cond_37

    :cond_1d
    iget-object p1, v1, Lcom/android/server/wm/WindowManagerService;->mFlags:Lcom/android/server/wm/WindowManagerFlags;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/server/wm/WallpaperController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isAodShowing()Z

    move-result p1

    if-eqz p1, :cond_35

    iget-object p1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mDexController:Lcom/android/server/wm/DexController;

    invoke-virtual {p1}, Lcom/android/server/wm/DexController;->isExternalDesktopDisplayActivated()Z

    move-result p1

    if-nez p1, :cond_35

    goto :goto_37

    :cond_35
    const/4 p1, 0x0

    goto :goto_38

    :cond_37
    :goto_37
    const/4 p1, 0x1

    :goto_38
    iget-object p0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object p0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->mTopWallpaper:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;

    if-nez p1, :cond_43

    iget-object p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_43

    goto :goto_45

    :cond_43
    iget-object p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    :goto_45
    if-nez p1, :cond_49

    :goto_47
    const/4 p0, 0x0

    return-object p0

    :cond_49
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object p0

    return-object p0
.end method

.method public final getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_38

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_18
    if-ltz v2, :cond_35

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v4

    if-eqz v4, :cond_32

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_32

    return-object v3

    :cond_32
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    :cond_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_38
    const/4 p0, 0x0

    return-object p0
.end method

.method public final hideWallpapers(Lcom/android/server/wm/WindowState;)V
    .registers 13

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_b

    if-ne v0, p1, :cond_60

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_b

    goto :goto_60

    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-eqz v0, :cond_12

    goto :goto_60

    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1a
    if-ltz v0, :cond_60

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    iget-boolean v2, v1, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_5a

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_WALLPAPER_enabled:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_5a

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

    const-wide v9, -0x48eb40cce662c01dL  # -2.3258049552014316E-43

    filled-new-array {v2, v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v8, v9, v10, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_5a
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibility(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    :cond_60
    :goto_60
    return-void
.end method

.method public final isWallpaperVisible()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1a

    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    if-eqz v2, :cond_17

    return v1

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final screenshotWallpaperLocked(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->canScreenshotWallpaper(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_c

    return-object v1

    :cond_c
    if-eqz p1, :cond_1d

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget p1, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    neg-int p1, p1

    iget v2, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    neg-int v2, v2

    invoke-virtual {p0, p1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_25

    :cond_1d
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_25
    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz p1, :cond_36

    iget-boolean v3, p1, Lcom/android/server/wm/WindowToken;->mIsPortraitWindowToken:Z

    if-eqz v3, :cond_36

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {p1, p0, v2}, Landroid/window/ScreenCapture;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object p0

    goto :goto_3c

    :cond_36
    iget-object p1, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {p1, p0, v2}, Landroid/window/ScreenCapture;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object p0

    :goto_3c
    if-nez p0, :cond_47

    const-string/jumbo p0, "WindowManager"

    const-string p1, "Failed to screenshot wallpaper"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_47
    invoke-virtual {p0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    invoke-virtual {p0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .registers 17

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_37

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v9, p6

    :goto_1c
    if-ltz v2, :cond_34

    iget-object v3, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    :try_start_26
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v9}, Landroid/view/IWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_30} :catch_31

    const/4 v9, 0x0

    :catch_31
    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    :cond_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_37
    return-void
.end method

.method public setMaxWallpaperScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    return-void
.end method

.method public setMinWallpaperScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/WallpaperController;->mMinWallpaperScale:F

    return-void
.end method

.method public setShouldOffsetWallpaperCenter(Z)V
    .registers 2

    return-void
.end method

.method public final startRemoteWallpaperAnimation(Landroid/os/IBinder;ILandroid/view/IRemoteAnimationRunner;)Landroid/view/SurfaceControl;
    .registers 13

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mRemoteWallpaperAnimAreaMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    goto/16 :goto_75

    :cond_b
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

    :goto_20
    iget-object v6, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_36

    iget-object v6, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mDisplayAreaGroupRoots:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/RootDisplayArea;

    invoke-static {v6, v3}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->getDisplayAreas(Lcom/android/server/wm/RootDisplayArea;Ljava/util/List;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_36
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_45

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayArea;

    move-object v3, v2

    goto :goto_46

    :cond_45
    move-object v3, v1

    :goto_46
    if-eqz v3, :cond_75

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

    :cond_75
    :goto_75
    return-object v1
.end method

.method public final updateWallpaperOffset(Lcom/android/server/wm/WindowState;)Z
    .registers 21

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

    if-lez v10, :cond_65

    iget v10, v4, Landroid/graphics/Point;->y:I

    if-gtz v10, :cond_36

    goto :goto_65

    :cond_36
    iget-object v10, v0, Lcom/android/server/wm/WallpaperController;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    if-eqz v10, :cond_3b

    goto :goto_53

    :cond_3b
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

    :goto_53
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v11

    if-ne v11, v13, :cond_5f

    move v11, v13

    goto :goto_60

    :cond_5f
    const/4 v11, 0x0

    :goto_60
    invoke-static {v8, v10, v4, v9, v11}, Lcom/android/server/wallpaper/WallpaperCropper;->getCrop(Landroid/graphics/Point;Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;Landroid/graphics/Point;Landroid/util/SparseArray;Z)Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_69

    :cond_65
    :goto_65
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    :goto_69
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v8, v8

    int-to-float v9, v9

    div-float v10, v8, v9

    cmpl-float v10, v10, v7

    if-ltz v10, :cond_7b

    move v10, v13

    goto :goto_7c

    :cond_7b
    const/4 v10, 0x0

    :goto_7c
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    const/high16 v14, 0x3f800000  # 1.0f

    if-eqz v11, :cond_86

    move v6, v14

    goto :goto_92

    :cond_86
    if-eqz v10, :cond_8d

    div-float/2addr v6, v9

    iget v5, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    div-float/2addr v6, v5

    goto :goto_92

    :cond_8d
    div-float/2addr v5, v8

    iget v6, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    div-float v6, v5, v6

    :goto_92
    if-eqz v10, :cond_97

    mul-float v5, v9, v7

    goto :goto_98

    :cond_97
    move v5, v8

    :goto_98
    if-eqz v10, :cond_9c

    move v7, v9

    goto :goto_9e

    :cond_9c
    div-float v7, v8, v7

    :goto_9e
    iget v10, v4, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    sub-float v11, v6, v14

    mul-float v15, v11, v5

    const/high16 v16, 0x40000000  # 2.0f

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

    if-ne v8, v13, :cond_c9

    move v8, v13

    goto :goto_ca

    :cond_c9
    const/4 v8, 0x0

    :goto_ca
    const/4 v9, 0x0

    if-eqz v8, :cond_cf

    move v8, v14

    goto :goto_d0

    :cond_cf
    move v8, v9

    :goto_d0
    iget v11, v3, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    cmpl-float v16, v11, v9

    if-ltz v16, :cond_d7

    move v8, v11

    :cond_d7
    iget v11, v3, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    cmpl-float v16, v11, v9

    const/high16 v17, -0x40800000  # -1.0f

    if-ltz v16, :cond_e0

    goto :goto_e2

    :cond_e0
    move/from16 v11, v17

    :goto_e2
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Configuration;->getLayoutDirection()I

    const/high16 v16, 0x3f000000  # 0.5f

    if-lez v5, :cond_f6

    int-to-float v5, v5

    mul-float/2addr v5, v8

    add-float v5, v5, v16

    float-to-int v5, v5

    neg-int v5, v5

    :goto_f3
    move/from16 v18, v9

    goto :goto_f8

    :cond_f6
    const/4 v5, 0x0

    goto :goto_f3

    :goto_f8
    iget v9, v3, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    const/high16 v12, -0x80000000

    if-eq v9, v12, :cond_100

    add-int/2addr v5, v9

    goto :goto_107

    :cond_100
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLayoutDirection()I

    :goto_107
    int-to-float v5, v5

    int-to-float v9, v10

    iget v10, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v9, v10

    add-float/2addr v9, v5

    float-to-int v5, v9

    iget v9, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v9, v9, v8

    if-nez v9, :cond_11d

    iget v9, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_11b

    goto :goto_11d

    :cond_11b
    const/4 v9, 0x0

    goto :goto_122

    :cond_11d
    :goto_11d
    iput v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v11, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    move v9, v13

    :goto_122
    iget v10, v3, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    cmpl-float v11, v10, v18

    if-ltz v11, :cond_129

    goto :goto_12b

    :cond_129
    move/from16 v10, v16

    :goto_12b
    iget v11, v3, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    cmpl-float v18, v11, v18

    if-ltz v18, :cond_132

    goto :goto_134

    :cond_132
    move/from16 v11, v17

    :goto_134
    if-lez v7, :cond_13d

    int-to-float v7, v7

    mul-float/2addr v7, v10

    add-float v7, v7, v16

    float-to-int v7, v7

    neg-int v7, v7

    goto :goto_13e

    :cond_13d
    const/4 v7, 0x0

    :goto_13e
    iget v3, v3, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    if-eq v3, v12, :cond_143

    add-int/2addr v7, v3

    :cond_143
    int-to-float v3, v7

    int-to-float v7, v15

    iget v12, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v7, v12

    add-float/2addr v7, v3

    float-to-int v3, v7

    iget v7, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v7, v7, v10

    if-nez v7, :cond_156

    iget v7, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v7, v7, v11

    if-eqz v7, :cond_15b

    :cond_156
    iput v10, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v11, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    move v9, v13

    :cond_15b
    iget v7, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    iget v11, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    invoke-static {v7, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_16a

    iget v7, v0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperZoomOut:F

    iput v7, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    move v9, v13

    :cond_16a
    iget-boolean v7, v1, Lcom/android/server/wm/WindowState;->mShouldScaleWallpaper:Z

    if-eqz v7, :cond_179

    iget v7, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    iget v11, v0, Lcom/android/server/wm/WallpaperController;->mMinWallpaperScale:F

    iget v0, v0, Lcom/android/server/wm/WallpaperController;->mMaxWallpaperScale:F

    sub-float/2addr v14, v7

    invoke-static {v11, v0, v14}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v14

    :cond_179
    mul-float/2addr v14, v6

    iget v0, v1, Lcom/android/server/wm/WindowState;->mXOffset:I

    if-ne v0, v5, :cond_18c

    iget v0, v1, Lcom/android/server/wm/WindowState;->mYOffset:I

    if-ne v0, v3, :cond_18c

    iget v0, v1, Lcom/android/server/wm/WindowState;->mWallpaperScale:F

    invoke-static {v0, v14}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_18c

    const/4 v12, 0x0

    goto :goto_196

    :cond_18c
    iput v5, v1, Lcom/android/server/wm/WindowState;->mXOffset:I

    iput v3, v1, Lcom/android/server/wm/WindowState;->mYOffset:I

    iput v14, v1, Lcom/android/server/wm/WindowState;->mWallpaperScale:F

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    move v12, v13

    :goto_196
    if-eqz v12, :cond_1da

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

    :cond_1da
    if-eqz v9, :cond_1f5

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1f5

    :try_start_1e4
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v2, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iget v3, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iget v4, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iget v5, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iget v6, v1, Lcom/android/server/wm/WindowState;->mWallpaperZoomOut:F

    const/4 v7, 0x0

    move-object v1, v0

    invoke-interface/range {v1 .. v7}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFFZ)V
    :try_end_1f5
    .catch Landroid/os/RemoteException; {:try_start_1e4 .. :try_end_1f5} :catch_1f5

    :catch_1f5
    :cond_1f5
    return v12
.end method

.method public final updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_15

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_15

    move-object v0, p1

    :cond_15
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->getTokenForTarget(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object p0

    if-nez p0, :cond_1c

    return-void

    :cond_1c
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_26

    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    goto :goto_2e

    :cond_26
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_2e

    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperX:F

    :cond_2e
    :goto_2e
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_37

    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    goto :goto_3f

    :cond_37
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_3f

    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperY:F

    :cond_3f
    :goto_3f
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_48

    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    goto :goto_4e

    :cond_48
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v1, v3, :cond_4e

    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetX:I

    :cond_4e
    :goto_4e
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v1, v3, :cond_55

    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    goto :goto_5b

    :cond_55
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v1, v3, :cond_5b

    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperDisplayOffsetY:I

    :cond_5b
    :goto_5b
    iget v1, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_64

    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    goto :goto_6c

    :cond_64
    iget v1, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_6c

    iput v1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperXStep:F

    :cond_6c
    :goto_6c
    iget v0, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v1, v0, v2

    if-ltz v1, :cond_75

    iput v0, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    goto :goto_7d

    :cond_75
    iget p1, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v0, p1, v2

    if-ltz v0, :cond_7d

    iput p1, p0, Lcom/android/server/wm/WallpaperWindowToken;->mWallpaperYStep:F

    :cond_7d
    :goto_7d
    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperOffset()V

    return-void
.end method
