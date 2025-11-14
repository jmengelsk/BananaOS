.class public abstract Lcom/android/server/wm/AbsAppSnapshotController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field static final SNAPSHOT_MODE_APP_THEME:I = 0x1

.field static final SNAPSHOT_MODE_NONE:I = 0x2

.field static final SNAPSHOT_MODE_REAL:I


# instance fields
.field public mCache:Lcom/android/server/wm/SnapshotCache;

.field public mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

.field public final mHighResSnapshotScale:F

.field public final mIsRunningOnIoT:Z

.field public final mIsRunningOnTv:Z

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mSnapshotEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mIsRunningOnTv:Z

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string/jumbo v0, "android.hardware.type.embedded"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mIsRunningOnIoT:Z

    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->initSnapshotScale()F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mHighResSnapshotScale:F

    return-void
.end method

.method public static validateSnapshot(Landroid/window/TaskSnapshot;)Landroid/window/TaskSnapshot;
    .registers 3

    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_12

    :cond_11
    return-object p0

    :cond_12
    :goto_12
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid snapshot dimensions "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "WindowManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public captureSnapshot(Lcom/android/server/wm/WindowContainer;Z)Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer;",
            "Z)",
            "Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/AbsAppSnapshotController;->getSnapshotMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v2

    if-eqz v2, :cond_147

    const/4 v3, 0x1

    if-eq v2, v3, :cond_11

    return-object v1

    :cond_11
    const-wide/16 v4, 0x20

    const-string/jumbo v2, "drawAppThemeSnapshot"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-eqz p2, :cond_141

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/AbsAppSnapshotController;->getTopActivity(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_22

    goto :goto_28

    :cond_22
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v7

    if-nez v7, :cond_2d

    :goto_28
    move-wide/from16 v19, v4

    const/4 v6, 0x0

    goto/16 :goto_13e

    :cond_2d
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/AbsAppSnapshotController;->getTaskDescription(Lcom/android/server/wm/WindowContainer;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v8

    const/16 v9, 0xff

    invoke-static {v8, v9}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v15

    iget-object v8, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v10

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v11

    const/4 v13, 0x0

    if-nez v11, :cond_5d

    iget-object v11, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v11, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBarsWithoutCaptionBar()I

    move-result v14

    invoke-virtual {v10, v11, v14, v13}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v11

    goto :goto_6d

    :cond_5d
    iget-object v11, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v11, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v14

    invoke-virtual {v10, v11, v14, v13}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v11

    :goto_6d
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    new-instance v16, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;

    move/from16 v17, v9

    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v18, v10

    iget v10, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move-wide/from16 v19, v4

    iget-object v4, v8, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v4, v4, Landroid/view/InsetsFlags;->appearance:I

    move v5, v14

    iget v14, v7, Lcom/android/server/wm/WindowState;->mRequestedVisibleTypes:I

    move/from16 v21, v13

    iget v13, v0, Lcom/android/server/wm/AbsAppSnapshotController;->mHighResSnapshotScale:F

    move v3, v5

    move-object/from16 v22, v11

    move/from16 v6, v17

    move-object/from16 v5, v18

    move v11, v4

    move-object v4, v8

    move-object/from16 v8, v16

    invoke-direct/range {v8 .. v14}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;-><init>(IIILandroid/app/ActivityManager$TaskDescription;FI)V

    int-to-float v9, v3

    mul-float/2addr v9, v13

    float-to-int v9, v9

    int-to-float v10, v6

    mul-float/2addr v10, v13

    float-to-int v10, v10

    const-string/jumbo v11, "SnapshotController"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v13, v9, v10}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    invoke-virtual {v11, v13}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    invoke-virtual {v11, v9, v10}, Landroid/graphics/RenderNode;->start(II)Landroid/graphics/RecordingCanvas;

    move-result-object v13

    invoke-virtual {v13, v15}, Landroid/graphics/RecordingCanvas;->drawColor(I)V

    move-object/from16 v14, v22

    invoke-virtual {v8, v14}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;)V

    invoke-virtual {v8, v13, v12}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    invoke-virtual {v11, v13}, Landroid/graphics/RenderNode;->end(Landroid/graphics/RecordingCanvas;)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v14}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/AbsAppSnapshotController;->getLetterboxInsets(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    new-instance v12, Landroid/window/TaskSnapshot$Builder;

    invoke-direct {v12}, Landroid/window/TaskSnapshot$Builder;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/window/TaskSnapshot$Builder;->setIsRealSnapshot(Z)Landroid/window/TaskSnapshot$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Landroid/window/TaskSnapshot$Builder;->setId(J)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {v12, v8}, Landroid/window/TaskSnapshot$Builder;->setContentInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {v12, v0}, Landroid/window/TaskSnapshot$Builder;->setLetterboxInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v12, v0}, Landroid/window/TaskSnapshot$Builder;->setTopActivityComponent(Landroid/content/ComponentName;)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {v12, v13}, Landroid/window/TaskSnapshot$Builder;->setIsTranslucent(Z)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/window/TaskSnapshot$Builder;->setWindowingMode(I)Landroid/window/TaskSnapshot$Builder;

    iget-object v0, v4, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    invoke-virtual {v12, v0}, Landroid/window/TaskSnapshot$Builder;->setAppearance(I)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v12, v0}, Landroid/window/TaskSnapshot$Builder;->setUiMode(I)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/window/TaskSnapshot$Builder;->setRotation(I)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v12, v0}, Landroid/window/TaskSnapshot$Builder;->setOrientation(I)Landroid/window/TaskSnapshot$Builder;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v3, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v12, v0}, Landroid/window/TaskSnapshot$Builder;->setTaskSize(Landroid/graphics/Point;)Landroid/window/TaskSnapshot$Builder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Landroid/window/TaskSnapshot$Builder;->setCaptureTime(J)Landroid/window/TaskSnapshot$Builder;

    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v5, v0, v2, v3}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/window/TaskSnapshot$Builder;->setCutoutInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    new-instance v6, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;

    invoke-direct {v6, v11, v9, v10, v12}, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/RenderNode;IILandroid/window/TaskSnapshot$Builder;)V

    :goto_13e
    iput-object v6, v1, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSupplier:Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;

    goto :goto_143

    :cond_141
    move-wide/from16 v19, v4

    :goto_143
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    return-object v1

    :cond_147
    iget v2, v0, Lcom/android/server/wm/AbsAppSnapshotController;->mHighResSnapshotScale:F

    move-object/from16 v3, p1

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/AbsAppSnapshotController;->snapshot(Lcom/android/server/wm/WindowContainer;F)Landroid/window/TaskSnapshot;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    return-object v1
.end method

.method public final checkIfReadyToSnapshot(Lcom/android/server/wm/WindowContainer;)Landroid/util/Pair;
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_b

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "WindowManager"

    if-nez v0, :cond_1e

    const-string p0, "Attempted to take screenshot while display was off."

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->findAppTokenForSnapshot(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-nez p0, :cond_36

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to take screenshot. No visible windows for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_4f

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to take screenshot. No main window for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result p1

    if-eqz p1, :cond_68

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Skip taking screenshot. App has fixed rotation "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_68
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 10

    const-string v0, " "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " mHighResSnapshotScale="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mHighResSnapshotScale:F

    const-string v3, " mSnapshotEnabled="

    invoke-static {v1, v2, p1, v3}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mSnapshotEnabled:Z

    invoke-static {v1, v2, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "   "

    const-string v2, "     "

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " SnapshotCache "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/SnapshotCache;->mName:Ljava/lang/String;

    invoke-static {v3, v4, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v3, p0, Lcom/android/server/wm/SnapshotCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2e
    iget-object v4, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_36
    if-ltz v4, :cond_96

    iget-object v5, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/SnapshotCache$CacheEntry;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Entry token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "topApp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/wm/SnapshotCache$CacheEntry;->topApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "snapshot="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lcom/android/server/wm/SnapshotCache$CacheEntry;->snapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_36

    :catchall_94
    move-exception p0

    goto :goto_a6

    :cond_96
    monitor-exit v3
    :try_end_97
    .catchall {:try_start_2e .. :try_end_97} :catchall_94

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p0, "MaxSnapshotCache="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/android/server/wm/SnapshotCache;->sMaxSnapshotCache:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void

    :goto_a6
    :try_start_a6
    monitor-exit v3
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_94

    throw p0
.end method

.method public abstract findAppTokenForSnapshot(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
.end method

.method public abstract getLetterboxInsets(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;
.end method

.method public final getSnapshotMode(Lcom/android/server/wm/WindowContainer;)I
    .registers 5

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v1, :cond_29

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    goto :goto_29

    :cond_c
    const/4 v1, 0x0

    if-ne v0, v2, :cond_10

    return v1

    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->getTopActivity(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_28

    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mEnableRecentsScreenshot:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_27

    new-instance p1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda18;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda18;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p0

    if-eqz p0, :cond_28

    :cond_27
    return v0

    :cond_28
    return v1

    :cond_29
    :goto_29
    return v2
.end method

.method public abstract getTaskDescription(Lcom/android/server/wm/WindowContainer;)Landroid/app/ActivityManager$TaskDescription;
.end method

.method public abstract getTopActivity(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
.end method

.method public initSnapshotScale()F
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10500ff

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const v0, 0x3dcccccd  # 0.1f

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public prepareTaskSnapshot(Lcom/android/server/wm/WindowContainer;Landroid/window/TaskSnapshot$Builder;)Landroid/graphics/Rect;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer;",
            "Landroid/window/TaskSnapshot$Builder;",
            ")",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->checkIfReadyToSnapshot(Lcom/android/server/wm/WindowContainer;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2c

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBarsWithoutCaptionBar()I

    move-result v5

    invoke-virtual {v4, v2, v5, v3}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_40

    :cond_2c
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v5

    invoke-virtual {v4, v2, v5, v3}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v2

    :goto_40
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_DESKTOP:Z

    if-eqz v4, :cond_62

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_62

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isDesktop()Z

    move-result v4

    if-eqz v4, :cond_62

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_62

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mCaptionInsetsHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v2, Landroid/graphics/Rect;->top:I

    :cond_62
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AbsAppSnapshotController;->getLetterboxInsets(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Landroid/window/TaskSnapshot$Builder;->setIsRealSnapshot(Z)Landroid/window/TaskSnapshot$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p2, v6, v7}, Landroid/window/TaskSnapshot$Builder;->setId(J)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {p2, v2}, Landroid/window/TaskSnapshot$Builder;->setContentInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {p2, v4}, Landroid/window/TaskSnapshot$Builder;->setLetterboxInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v6

    invoke-virtual {v4, v2, v6, v5}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/window/TaskSnapshot$Builder;->setCutoutInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_9a

    move v2, v5

    goto :goto_9b

    :cond_9a
    move v2, v3

    :goto_9b
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v4

    invoke-virtual {p2}, Landroid/window/TaskSnapshot$Builder;->getPixelFormat()I

    move-result v6

    if-nez v6, :cond_b9

    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->use16BitFormat()Z

    move-result v6

    if-eqz v6, :cond_b8

    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v6

    if-eqz v6, :cond_b8

    if-eqz v2, :cond_b5

    if-nez v4, :cond_b8

    :cond_b5
    const/4 v4, 0x4

    move v6, v4

    goto :goto_b9

    :cond_b8
    move v6, v5

    :cond_b9
    :goto_b9
    invoke-static {v6}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v4

    if-eqz v4, :cond_c9

    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v4

    if-eqz v4, :cond_c7

    if-eqz v2, :cond_c9

    :cond_c7
    move v2, v5

    goto :goto_ca

    :cond_c9
    move v2, v3

    :goto_ca
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v4}, Landroid/window/TaskSnapshot$Builder;->setTopActivityComponent(Landroid/content/ComponentName;)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {p2, v6}, Landroid/window/TaskSnapshot$Builder;->setPixelFormat(I)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {p2, v2}, Landroid/window/TaskSnapshot$Builder;->setIsTranslucent(Z)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/window/TaskSnapshot$Builder;->setWindowingMode(I)Landroid/window/TaskSnapshot$Builder;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    invoke-virtual {p2, v0}, Landroid/window/TaskSnapshot$Builder;->setAppearance(I)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p2, v0}, Landroid/window/TaskSnapshot$Builder;->setUiMode(I)Landroid/window/TaskSnapshot$Builder;

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz p0, :cond_131

    iget v6, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    if-eq v6, v1, :cond_131

    iget-object p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v0, p1}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {p2, v6}, Landroid/window/TaskSnapshot$Builder;->setRotation(I)Landroid/window/TaskSnapshot$Builder;

    iget-object p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-lt p1, p0, :cond_12c

    goto :goto_12d

    :cond_12c
    const/4 v5, 0x2

    :goto_12d
    invoke-virtual {p2, v5}, Landroid/window/TaskSnapshot$Builder;->setOrientation(I)Landroid/window/TaskSnapshot$Builder;

    goto :goto_157

    :cond_131
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v4, v0, p1}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {p2, v1}, Landroid/window/TaskSnapshot$Builder;->setRotation(I)Landroid/window/TaskSnapshot$Builder;

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p2, p0}, Landroid/window/TaskSnapshot$Builder;->setOrientation(I)Landroid/window/TaskSnapshot$Builder;

    :goto_157
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {p2, v4}, Landroid/window/TaskSnapshot$Builder;->setTaskSize(Landroid/graphics/Point;)Landroid/window/TaskSnapshot$Builder;

    return-object v2
.end method

.method public final shouldDisableSnapshots()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mIsRunningOnTv:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mIsRunningOnIoT:Z

    if-nez v0, :cond_f

    iget-boolean p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mSnapshotEnabled:Z

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public final snapshot(Lcom/android/server/wm/WindowContainer;F)Landroid/window/TaskSnapshot;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/window/TaskSnapshot$Builder;

    invoke-direct {v2}, Landroid/window/TaskSnapshot$Builder;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AbsAppSnapshotController;->prepareTaskSnapshot(Lcom/android/server/wm/WindowContainer;Landroid/window/TaskSnapshot$Builder;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_12

    goto/16 :goto_fe

    :cond_12
    const-wide/16 v5, 0x20

    const-string/jumbo v7, "createSnapshot"

    invoke-static {v5, v6, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v7

    const-string/jumbo v8, "WindowManager"

    if-nez v7, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to take screenshot. No surface control for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    move-object v0, v4

    goto/16 :goto_f9

    :cond_37
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    const/4 v10, 0x1

    if-eqz v9, :cond_ad

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const/4 v11, 0x0

    if-eqz v9, :cond_5c

    iget-object v12, v9, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v12, :cond_5c

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    move-result v12

    if-nez v12, :cond_5c

    move v12, v10

    goto :goto_5d

    :cond_5c
    move v12, v11

    :goto_5d
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v13, v13, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    if-eqz v13, :cond_69

    move v14, v10

    goto :goto_6a

    :cond_69
    move v14, v11

    :goto_6a
    if-eqz v12, :cond_73

    iget-object v15, v9, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v15, :cond_73

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_73
    if-eqz v14, :cond_7c

    iget-object v13, v13, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v13, :cond_7c

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7c
    sget-boolean v13, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_POPUP:Z

    if-eqz v13, :cond_8d

    instance-of v13, v1, Lcom/android/server/wm/Task;

    if-eqz v13, :cond_8d

    iget-object v13, v0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13, v1}, Lcom/android/server/wm/WindowManagerService;->getExcludeLayers(Lcom/android/server/wm/WindowContainer;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_8d
    if-nez v12, :cond_98

    if-eqz v9, :cond_98

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_98

    move v11, v10

    :cond_98
    invoke-virtual {v2, v11}, Landroid/window/TaskSnapshot$Builder;->setHasImeSurface(Z)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/AbsAppSnapshotController;->findAppTokenForSnapshot(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->IS_PREDICTIVE_BACK_ANIM_ENABLED:Z

    if-eqz v11, :cond_ad

    if-eqz v9, :cond_ad

    new-instance v11, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda1;

    invoke-direct {v11, v0, v7}, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AbsAppSnapshotController;Ljava/util/ArrayList;)V

    invoke-virtual {v9, v11, v10}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    :cond_ad
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/SurfaceControl;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_bc

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_bc
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v2}, Landroid/window/TaskSnapshot$Builder;->getPixelFormat()I

    move-result v7

    move/from16 v9, p2

    invoke-static {v1, v3, v9, v7, v0}, Landroid/window/ScreenCapture;->captureLayersExcluding(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI[Landroid/view/SurfaceControl;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v0

    if-nez v0, :cond_ce

    move-object v1, v4

    goto :goto_d2

    :cond_ce
    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    :goto_d2
    if-eqz v1, :cond_e6

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v3

    if-nez v3, :cond_e6

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v3

    if-le v3, v10, :cond_e6

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v3

    if-gt v3, v10, :cond_f9

    :cond_e6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to take screenshot, invalid buffer="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    :cond_f9
    :goto_f9
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    if-nez v0, :cond_ff

    :goto_fe
    return-object v4

    :cond_ff
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/window/TaskSnapshot$Builder;->setCaptureTime(J)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/window/TaskSnapshot$Builder;->setSnapshot(Landroid/hardware/HardwareBuffer;)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/window/TaskSnapshot$Builder;->setColorSpace(Landroid/graphics/ColorSpace;)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {v0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/window/TaskSnapshot$Builder;->setContainsSecureLayers(Z)Landroid/window/TaskSnapshot$Builder;

    invoke-virtual {v2}, Landroid/window/TaskSnapshot$Builder;->build()Landroid/window/TaskSnapshot;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/AbsAppSnapshotController;->validateSnapshot(Landroid/window/TaskSnapshot;)Landroid/window/TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public abstract use16BitFormat()Z
.end method
