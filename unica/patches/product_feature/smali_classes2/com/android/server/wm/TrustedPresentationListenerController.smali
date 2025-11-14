.class public final Lcom/android/server/wm/TrustedPresentationListenerController;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public final mHandlerThreadLock:Ljava/lang/Object;

.field public mLastWindowHandles:Landroid/util/Pair;

.field public final mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

.field public mWindowInfosListener:Lcom/android/server/wm/TrustedPresentationListenerController$1;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandlerThreadLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;-><init>(Lcom/android/server/wm/TrustedPresentationListenerController;)V

    iput-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    return-void
.end method

.method public static addListenerUpdate(Landroid/util/ArrayMap;Landroid/window/ITrustedPresentationListener;IZ)V
    .registers 7

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-nez v0, :cond_1a

    new-instance v0, Landroid/util/Pair;

    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    if-eqz p3, :cond_24

    iget-object p0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/util/IntArray;

    invoke-virtual {p0, p2}, Landroid/util/IntArray;->add(I)V

    return-void

    :cond_24
    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/util/IntArray;

    invoke-virtual {p0, p2}, Landroid/util/IntArray;->add(I)V

    return-void
.end method


# virtual methods
.method public final computeTpl(Landroid/util/Pair;)V
    .registers 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    if-eqz v1, :cond_3f9

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [Landroid/view/InputWindowHandle;

    array-length v1, v1

    if-eqz v1, :cond_3f9

    iget-object v1, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    iget-object v2, v1, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    goto/16 :goto_3f9

    :cond_1b
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/16 v6, 0x9

    new-array v6, v6, [F

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-object v10, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_TPL_enabled:[Z

    const/4 v11, 0x1

    aget-boolean v12, v10, v11

    if-eqz v12, :cond_5f

    iget-object v12, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, [Landroid/view/InputWindowHandle;

    array-length v12, v12

    int-to-long v12, v12

    sget-object v14, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    move-wide v15, v8

    const-wide v8, 0x58f0d07fa42a324fL  # 2.713694087337687E120

    invoke-static {v14, v8, v9, v11, v12}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_60

    :cond_5f
    move-wide v15, v8

    :goto_60
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    iget-object v9, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, [Landroid/view/InputWindowHandle;

    array-length v12, v9

    const/4 v14, 0x0

    :goto_6d
    if-ge v14, v12, :cond_3d0

    move/from16 p1, v11

    aget-object v11, v9, v14

    iget v13, v11, Landroid/view/InputWindowHandle;->inputConfig:I

    move-object/from16 v18, v9

    const/4 v9, 0x2

    and-int/2addr v13, v9

    if-ne v13, v9, :cond_7e

    move/from16 v13, p1

    goto :goto_7f

    :cond_7e
    const/4 v13, 0x0

    :goto_7f
    iget-boolean v9, v11, Landroid/view/InputWindowHandle;->canOccludePresentation:Z

    if-eqz v9, :cond_85

    if-eqz v13, :cond_9c

    :cond_85
    move-object/from16 v22, v1

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-object/from16 v21, v10

    move/from16 v24, v12

    :goto_93
    move-wide/from16 v30, v15

    const/4 v13, 0x0

    move/from16 v15, p1

    move/from16 v16, v14

    goto/16 :goto_3b9

    :cond_9c
    iget-object v9, v11, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    invoke-virtual {v3, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v9, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mLastWindowHandles:Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [Landroid/window/WindowInfosListener$DisplayInfo;

    array-length v13, v9

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    const/4 v9, 0x0

    :goto_ad
    if-ge v9, v13, :cond_de

    aget-object v10, v20, v9

    move/from16 v23, v9

    iget v9, v10, Landroid/window/WindowInfosListener$DisplayInfo;->mDisplayId:I

    move/from16 v24, v12

    iget v12, v11, Landroid/view/InputWindowHandle;->displayId:I

    if-ne v9, v12, :cond_d9

    iget-object v9, v10, Landroid/window/WindowInfosListener$DisplayInfo;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v9, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    iget-object v9, v10, Landroid/window/WindowInfosListener$DisplayInfo;->mLogicalSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    iget-object v12, v10, Landroid/window/WindowInfosListener$DisplayInfo;->mLogicalSize:Landroid/util/Size;

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v4, v13, v13, v9, v12}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    iget v9, v10, Landroid/window/WindowInfosListener$DisplayInfo;->mDisplayId:I

    goto :goto_e1

    :cond_d9
    add-int/lit8 v9, v23, 0x1

    move/from16 v12, v24

    goto :goto_ad

    :cond_de
    move/from16 v24, v12

    const/4 v9, -0x1

    :goto_e1
    const/4 v10, 0x4

    const/4 v12, -0x1

    if-ne v9, v12, :cond_10f

    aget-boolean v9, v21, p1

    if-eqz v9, :cond_104

    iget-object v9, v11, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget v11, v11, Landroid/view/InputWindowHandle;->displayId:I

    int-to-long v11, v11

    sget-object v13, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array {v9, v11}, [Ljava/lang/Object;

    move-result-object v9

    const-wide v11, -0x51ca82a2766c2d3L  # -8.988602139952866E283

    invoke-static {v13, v11, v12, v10, v9}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_104
    move-object/from16 v22, v1

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    goto :goto_93

    :cond_10f
    new-instance v12, Landroid/graphics/Region;

    invoke-direct {v12}, Landroid/graphics/Region;-><init>()V

    invoke-virtual {v7, v9, v12}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Region;

    invoke-virtual {v11}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    move-result-object v13

    move/from16 v20, v10

    iget-object v10, v1, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    invoke-virtual {v10, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    if-eqz v10, :cond_37b

    new-instance v13, Landroid/graphics/Region;

    invoke-direct {v13}, Landroid/graphics/Region;-><init>()V

    move-object/from16 v22, v1

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v13, v2, v12, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    iget-object v1, v11, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 v17, 0x0

    aget v1, v6, v17

    mul-float/2addr v1, v1

    aget v23, v6, p1

    mul-float v23, v23, v23

    add-float v1, v23, v1

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    aget v3, v6, v20

    mul-float/2addr v3, v3

    const/4 v4, 0x3

    aget v4, v6, v4

    mul-float/2addr v4, v4

    add-float/2addr v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v26, v4

    iget-object v4, v11, Landroid/view/InputWindowHandle;->contentSize:Landroid/util/Size;

    aget-boolean v27, v21, p1

    if-eqz v27, :cond_1a5

    move-object/from16 v27, v4

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v28, v5

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v29, v6

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-wide/from16 v30, v15

    move/from16 v16, v14

    float-to-double v14, v1

    move-wide/from16 v32, v14

    float-to-double v14, v3

    move/from16 v34, v1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    move/from16 v35, v3

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    filled-new-array {v4, v5, v6, v3, v14}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, -0x47a5b213e60cccecL  # -3.09206546421734E-37

    const/16 v6, 0x280

    invoke-static {v1, v4, v5, v6, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_1b3

    :cond_1a5
    move/from16 v34, v1

    move/from16 v35, v3

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-wide/from16 v30, v15

    move/from16 v16, v14

    :goto_1b3
    invoke-virtual/range {v27 .. v27}, Landroid/util/Size;->getWidth()I

    move-result v1

    const/high16 v3, -0x40800000  # -1.0f

    if-eqz v1, :cond_23f

    invoke-virtual/range {v27 .. v27}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-nez v1, :cond_1c3

    goto/16 :goto_23f

    :cond_1c3
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_23f

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1d5

    goto :goto_23f

    :cond_1d5
    mul-float v1, v34, v35

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aget-boolean v3, v21, p1

    if-eqz v3, :cond_1f5

    float-to-double v3, v1

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v14, 0xc7911e0fc813d91L

    const/4 v4, 0x2

    invoke-static {v5, v14, v15, v4, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1f5
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual/range {v27 .. v27}, Landroid/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {v27 .. v27}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v4, v3

    mul-float/2addr v4, v1

    aget-boolean v1, v21, p1

    if-eqz v1, :cond_223

    float-to-double v5, v4

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v5, -0x652440cf159cb8cL  # -1.317716381413378E278

    const/4 v14, 0x2

    invoke-static {v1, v5, v6, v14, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_223
    move/from16 v1, p1

    new-array v3, v1, [F

    new-instance v1, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda3;

    invoke-direct {v1, v3}, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda3;-><init>([F)V

    invoke-static {v13, v1}, Lcom/android/server/wm/utils/RegionUtils;->forEachRect(Landroid/graphics/Region;Ljava/util/function/Consumer;)V

    const/16 v17, 0x0

    aget v1, v3, v17

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v5, v3

    div-float/2addr v1, v5

    mul-float v3, v1, v4

    :cond_23f
    :goto_23f
    iget v1, v11, Landroid/view/InputWindowHandle;->alpha:F

    const/4 v4, 0x1

    aget-boolean v5, v21, v4

    if-eqz v5, :cond_264

    float-to-double v4, v3

    float-to-double v13, v1

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    filled-new-array {v4, v5, v13}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v13, 0xbdbbfb5325b3d44L

    const/16 v5, 0x1a

    invoke-static {v6, v13, v14, v5, v4}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_264
    const/4 v13, 0x0

    :goto_265
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_389

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;

    iget-object v5, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mListener:Landroid/window/ITrustedPresentationListener;

    iget-boolean v6, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastComputedTrustedPresentationState:Z

    iget-object v14, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    invoke-virtual {v14}, Landroid/window/TrustedPresentationThresholds;->getMinAlpha()F

    move-result v14

    cmpl-float v14, v1, v14

    if-ltz v14, :cond_28b

    iget-object v14, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    invoke-virtual {v14}, Landroid/window/TrustedPresentationThresholds;->getMinFractionRendered()F

    move-result v14

    cmpl-float v14, v3, v14

    if-ltz v14, :cond_28b

    const/4 v14, 0x1

    goto :goto_28c

    :cond_28b
    const/4 v14, 0x0

    :goto_28c
    iput-boolean v14, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastComputedTrustedPresentationState:Z

    const/4 v15, 0x1

    aget-boolean v19, v21, v15

    if-eqz v19, :cond_2db

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v32

    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v33

    move v15, v13

    move/from16 v19, v14

    float-to-double v13, v1

    move/from16 v26, v1

    iget-object v1, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    invoke-virtual {v1}, Landroid/window/TrustedPresentationThresholds;->getMinAlpha()F

    move-result v1

    move-wide/from16 v34, v13

    float-to-double v13, v1

    move-wide/from16 v36, v13

    float-to-double v13, v3

    iget-object v1, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    invoke-virtual {v1}, Landroid/window/TrustedPresentationThresholds;->getMinFractionRendered()F

    move-result v1

    move-wide/from16 v38, v13

    float-to-double v13, v1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static/range {v34 .. v35}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v34

    invoke-static/range {v36 .. v37}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v36

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v37

    filled-new-array/range {v32 .. v37}, [Ljava/lang/Object;

    move-result-object v13

    move/from16 v27, v15

    const-wide v14, -0x1f348c21345dc04bL  # -1.884566701359065E158

    move/from16 v32, v3

    const/16 v3, 0xaa0

    invoke-static {v1, v14, v15, v3, v13}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_2e3

    :cond_2db
    move/from16 v26, v1

    move/from16 v32, v3

    move/from16 v27, v13

    move/from16 v19, v14

    :goto_2e3
    iget v1, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mId:I

    if-eqz v6, :cond_315

    if-nez v19, :cond_315

    iget-boolean v3, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastReportedTrustedPresentationState:Z

    if-eqz v3, :cond_310

    const/4 v13, 0x0

    iput-boolean v13, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastReportedTrustedPresentationState:Z

    invoke-static {v8, v5, v1, v13}, Lcom/android/server/wm/TrustedPresentationListenerController;->addListenerUpdate(Landroid/util/ArrayMap;Landroid/window/ITrustedPresentationListener;IZ)V

    aget-boolean v3, v21, v13

    if-eqz v3, :cond_310

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-long v13, v1

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    filled-new-array {v3, v13}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v13, 0x568b544bbdca3c3bL  # 8.022997441390794E108

    move/from16 v15, v20

    invoke-static {v6, v13, v14, v15, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_310
    const-wide/16 v13, -0x1

    iput-wide v13, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mEnteredTrustedPresentationStateTime:J

    goto :goto_334

    :cond_315
    if-nez v6, :cond_334

    if-eqz v19, :cond_334

    move-wide/from16 v13, v30

    iput-wide v13, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mEnteredTrustedPresentationStateTime:J

    iget-object v3, v0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda2;

    const/4 v15, 0x0

    invoke-direct {v6, v15, v0}, Lcom/android/server/wm/TrustedPresentationListenerController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    iget-object v15, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    invoke-virtual {v15}, Landroid/window/TrustedPresentationThresholds;->getStabilityRequirementMillis()I

    move-result v15

    int-to-double v13, v15

    const-wide/high16 v33, 0x3ff8000000000000L  # 1.5

    mul-double v13, v13, v33

    double-to-long v13, v13

    invoke-virtual {v3, v6, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_334
    :goto_334
    iget-boolean v3, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastReportedTrustedPresentationState:Z

    if-nez v3, :cond_370

    if-eqz v19, :cond_370

    iget-wide v13, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mEnteredTrustedPresentationStateTime:J

    sub-long v13, v30, v13

    iget-object v3, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    invoke-virtual {v3}, Landroid/window/TrustedPresentationThresholds;->getStabilityRequirementMillis()I

    move-result v3

    move-wide/from16 v33, v13

    int-to-long v13, v3

    cmp-long v3, v33, v13

    if-lez v3, :cond_370

    const/4 v15, 0x1

    iput-boolean v15, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mLastReportedTrustedPresentationState:Z

    invoke-static {v8, v5, v1, v15}, Lcom/android/server/wm/TrustedPresentationListenerController;->addListenerUpdate(Landroid/util/ArrayMap;Landroid/window/ITrustedPresentationListener;IZ)V

    const/16 v17, 0x0

    aget-boolean v3, v21, v17

    if-eqz v3, :cond_370

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, v1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, 0x4b0551b010a7372fL  # 2.5524542683740336E53

    const/4 v15, 0x4

    invoke-static {v1, v4, v5, v15, v3}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_371

    :cond_370
    const/4 v15, 0x4

    :goto_371
    add-int/lit8 v13, v27, 0x1

    move/from16 v20, v15

    move/from16 v1, v26

    move/from16 v3, v32

    goto/16 :goto_265

    :cond_37b
    move-object/from16 v22, v1

    move-object/from16 v23, v3

    move-object/from16 v25, v4

    move-object/from16 v28, v5

    move-object/from16 v29, v6

    move-wide/from16 v30, v15

    move/from16 v16, v14

    :cond_389
    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v12, v2, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v7, v9, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v15, 0x1

    aget-boolean v1, v21, v15

    if-eqz v1, :cond_3b8

    iget-object v1, v11, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TPL:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, -0xfc2b3ca4a2bc081L  # -4.548520085728638E232

    filled-new-array {v1, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v13, 0x0

    invoke-static {v5, v9, v10, v13, v1}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_3b9

    :cond_3b8
    const/4 v13, 0x0

    :goto_3b9
    add-int/lit8 v14, v16, 0x1

    move v11, v15

    move-object/from16 v9, v18

    move-object/from16 v10, v21

    move-object/from16 v1, v22

    move-object/from16 v3, v23

    move/from16 v12, v24

    move-object/from16 v4, v25

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move-wide/from16 v15, v30

    goto/16 :goto_6d

    :cond_3d0
    const/4 v13, 0x0

    :goto_3d1
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v13, v0, :cond_3f9

    invoke-virtual {v8, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    invoke-virtual {v8, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/ITrustedPresentationListener;

    :try_start_3e3
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/window/ITrustedPresentationListener;->onTrustedPresentationChanged([I[I)V
    :try_end_3f6
    .catch Landroid/os/RemoteException; {:try_start_3e3 .. :try_end_3f6} :catch_3f6

    :catch_3f6
    add-int/lit8 v13, v13, 0x1

    goto :goto_3d1

    :cond_3f9
    :goto_3f9
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 9

    const-string/jumbo v0, "TrustedPresentationListenerController:"

    const-string v1, "  Active unique listeners ("

    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mRegisteredListeners:Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;

    iget-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mUniqueListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_22
    iget-object v2, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_87

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    window="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/TrustedPresentationListenerController$Listeners;->mWindowToListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move v3, v0

    :goto_4a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_84

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "      listener="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mListener:Landroid/window/ITrustedPresentationListener;

    invoke-interface {v6}, Landroid/window/ITrustedPresentationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " thresholds="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/wm/TrustedPresentationListenerController$TrustedPresentationInfo;->mThresholds:Landroid/window/TrustedPresentationThresholds;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_87
    return-void
.end method

.method public final startHandlerThreadIfNeeded()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandlerThreadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_24

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "WindowInfosListenerForTpl"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wm/TrustedPresentationListenerController;->mHandler:Landroid/os/Handler;

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_26

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_22

    throw p0
.end method
