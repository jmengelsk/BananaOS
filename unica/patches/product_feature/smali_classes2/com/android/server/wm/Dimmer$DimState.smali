.class public final Lcom/android/server/wm/Dimmer$DimState;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mAnimationHelper:Lcom/android/server/wm/DimmerAnimationHelper;

.field public final mDimBounds:Landroid/graphics/Rect;

.field public final mDimSurface:Landroid/view/SurfaceControl;

.field public final mHostContainer:Lcom/android/server/wm/WindowContainer;

.field public mIsVisible:Z

.field public mLastDimmingWindow:Lcom/android/server/wm/WindowState;

.field public mSkipAnimation:Z

.field public final synthetic this$0:Lcom/android/server/wm/Dimmer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Dimmer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Dimmer$DimState;->this$0:Lcom/android/server/wm/Dimmer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mSkipAnimation:Z

    iput-boolean v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mIsVisible:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    iget-object v0, p1, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    iput-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    new-instance v1, Lcom/android/server/wm/DimmerAnimationHelper;

    iget-object p1, p1, Lcom/android/server/wm/Dimmer;->mAnimationAdapterFactory:Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;

    invoke-direct {v1, v0, p1}, Lcom/android/server/wm/DimmerAnimationHelper;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;)V

    iput-object v1, p0, Lcom/android/server/wm/Dimmer$DimState;->mAnimationHelper:Lcom/android/server/wm/DimmerAnimationHelper;

    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/wm/Dimmer$DimState;->makeDimLayer()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x9538

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_3a
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1e .. :try_end_3a} :catch_3b

    return-void

    :catch_3b
    const-string/jumbo p0, "WindowManagerDimmer"

    const-string/jumbo p1, "OutOfResourcesException creating dim surface"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final isDimming()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mLastDimmingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x1

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x0

    return p0
.end method

.method public final makeDimLayer()Landroid/view/SurfaceControl;
    .registers 4

    iget-object p0, p0, Lcom/android/server/wm/Dimmer$DimState;->this$0:Lcom/android/server/wm/Dimmer;

    iget-object v0, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dim Layer for - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/Dimmer;->mHost:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    const-string v0, "DimLayer.makeDimLayer"

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public final remove(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "ready to remove"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x953b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/Dimmer$DimState;->mAnimationHelper:Lcom/android/server/wm/DimmerAnimationHelper;

    iget-object v2, v1, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    iget-object v3, v1, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    if-eqz v2, :cond_29

    iget v4, v2, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentAlpha:F

    iput v4, v3, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    iget v2, v2, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentBlur:I

    iput v2, v3, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    :cond_29
    iget-object v2, v1, Lcom/android/server/wm/DimmerAnimationHelper;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/wm/DimmerAnimationHelper;->mLocalAnimationAdapter:Lcom/android/server/wm/LocalAnimationAdapter;

    iput-object v0, v1, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v0

    const v1, 0x953d

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_69

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x6e459311c7713e31L  # 1.5597225220299602E223

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_69
    return-void

    :cond_6a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Tried to remove "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " multiple times\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "WindowManagerDimmer"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setReady(Landroid/view/SurfaceControl$Transaction;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/wm/Dimmer$DimState;->mAnimationHelper:Lcom/android/server/wm/DimmerAnimationHelper;

    iget-object v4, v3, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    iget v5, v4, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    iget v6, v4, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    iget-object v7, v4, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    iget-object v0, v4, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mGeometryParent:Lcom/android/server/wm/WindowContainer;

    iget-object v8, v3, Lcom/android/server/wm/DimmerAnimationHelper;->mRequestedProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    iget v9, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    iput v9, v4, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    iget v9, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    iput v9, v4, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    iget-object v9, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    iput-object v9, v4, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    iget-object v9, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mGeometryParent:Lcom/android/server/wm/WindowContainer;

    iput-object v9, v4, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mGeometryParent:Lcom/android/server/wm/WindowContainer;

    iget-object v9, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    const-string/jumbo v10, "WindowManager"

    if-nez v9, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not have a dimming container. Have you forgotten to call adjustRelativeLayer?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3e
    iget-object v9, v9, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v9, :cond_60

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "container "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "does not have a surface"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/Dimmer$DimState;->remove(Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :cond_60
    iget-object v9, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v9}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v9

    if-nez v9, :cond_81

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Dimming surface "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has already been released! Can not apply changes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_81
    iget-boolean v9, v1, Lcom/android/server/wm/Dimmer$DimState;->mIsVisible:Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v9, :cond_93

    iget-object v9, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v9}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v9, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v9, v11}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iput-boolean v12, v1, Lcom/android/server/wm/Dimmer$DimState;->mIsVisible:Z

    :cond_93
    iget-object v9, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mGeometryParent:Lcom/android/server/wm/WindowContainer;

    const/4 v13, 0x0

    if-eq v0, v9, :cond_9d

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_9e

    :cond_9d
    move-object v0, v13

    :goto_9e
    iget-object v9, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    if-eq v9, v7, :cond_a5

    iget-object v9, v9, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_a6

    :cond_a5
    move-object v9, v13

    :goto_a6
    iget-object v14, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_b0

    :try_start_aa
    invoke-virtual {v2, v14, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_b0

    :catch_ae
    move-exception v0

    goto :goto_b7

    :cond_b0
    :goto_b0
    if-eqz v9, :cond_ce

    const/4 v0, -0x1

    invoke-virtual {v2, v14, v9, v0}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    :try_end_b6
    .catch Ljava/lang/NullPointerException; {:try_start_aa .. :try_end_b6} :catch_ae

    goto :goto_ce

    :goto_b7
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "Tried to change parent of dim "

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " after remove"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_ce
    :goto_ce
    iget-object v0, v4, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_d9

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    goto :goto_da

    :cond_d9
    move-object v4, v13

    :goto_da
    if-eqz v4, :cond_e1

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    goto :goto_e2

    :cond_e1
    move-object v9, v13

    :goto_e2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_ed

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    goto :goto_ee

    :cond_ed
    move-object v10, v13

    :goto_ee
    iget-object v14, v1, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    const/4 v15, 0x0

    move/from16 v16, v12

    if-eqz v4, :cond_100

    iget-boolean v12, v4, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-eqz v12, :cond_100

    move/from16 v12, v16

    goto :goto_101

    :cond_100
    move v12, v15

    :goto_101
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    if-eqz v12, :cond_123

    iget-object v14, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->isDimmingOnParentTask()Z

    move-result v4

    if-eqz v4, :cond_111

    move-object v9, v10

    :cond_111
    invoke-virtual {v14, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v4, v10, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    iget v9, v10, Landroid/graphics/Rect;->top:I

    neg-int v9, v9

    invoke-virtual {v11, v4, v9}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_130

    :cond_123
    iget-object v4, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v11, v15, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_130
    if-eqz v0, :cond_134

    if-eqz v12, :cond_141

    :cond_134
    iget-object v0, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v2, v0, v4, v9}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :cond_141
    iget-object v0, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    iget v4, v11, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v9, v11, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    invoke-virtual {v2, v0, v4, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget v0, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v4, 0x38d1b717  # 1.0E-4f

    cmpg-float v0, v0, v4

    if-gez v0, :cond_16a

    iget v0, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    if-ne v6, v0, :cond_16a

    invoke-virtual {v1}, Lcom/android/server/wm/Dimmer$DimState;->isDimming()Z

    move-result v0

    if-nez v0, :cond_288

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/Dimmer$DimState;->remove(Landroid/view/SurfaceControl$Transaction;)V

    goto/16 :goto_288

    :cond_16a
    iget-object v0, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v4, "new target values"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const v4, 0x953b

    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    iget-object v4, v3, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    iget-object v9, v3, Lcom/android/server/wm/DimmerAnimationHelper;->mCurrentProperties:Lcom/android/server/wm/DimmerAnimationHelper$Change;

    if-eqz v4, :cond_191

    iget v10, v4, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentAlpha:F

    iput v10, v9, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    iget v4, v4, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;->mCurrentBlur:I

    iput v4, v9, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    :cond_191
    iget-object v4, v3, Lcom/android/server/wm/DimmerAnimationHelper;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    iput-object v13, v3, Lcom/android/server/wm/DimmerAnimationHelper;->mLocalAnimationAdapter:Lcom/android/server/wm/LocalAnimationAdapter;

    iput-object v13, v3, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    iget-boolean v0, v1, Lcom/android/server/wm/Dimmer$DimState;->mSkipAnimation:Z

    sget-object v9, Lcom/android/internal/protolog/ProtoLogImpl_1342711150$Cache;->WM_DEBUG_DIMMER_enabled:[Z

    if-nez v0, :cond_25f

    if-eqz v7, :cond_1ae

    iget-object v0, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    if-ne v7, v0, :cond_1ae

    invoke-virtual {v1}, Lcom/android/server/wm/Dimmer$DimState;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_1ae

    goto/16 :goto_25f

    :cond_1ae
    aget-boolean v0, v9, v16

    if-eqz v0, :cond_1c4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v10, -0x5838e9a5f346c47cL

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v10, v11, v15, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1c4
    const/4 v7, 0x0

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mDimmingContainer:Lcom/android/server/wm/WindowState;

    iget-object v7, v6, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v7, :cond_1e7

    iget-object v7, v7, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    iget-object v6, v6, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v6

    if-nez v7, :cond_1e2

    const/high16 v7, 0x43480000  # 200.0f

    mul-float/2addr v6, v7

    float-to-long v6, v6

    goto :goto_1e9

    :cond_1e2
    invoke-interface {v7}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    move-result-wide v6

    goto :goto_1e9

    :cond_1e7
    const-wide/16 v6, 0x0

    :goto_1e9
    new-instance v10, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    new-instance v11, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v12, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-direct {v11, v0, v12}, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v12, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v0, v5, v12}, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v10, v11, v0, v6, v7}, Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;-><init>(Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec$AnimationExtremes;J)V

    aget-boolean v0, v9, v16

    if-eqz v0, :cond_222

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v6, -0x107bda7fb260c74eL

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v6, v7, v15, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_222
    iput-object v10, v3, Lcom/android/server/wm/DimmerAnimationHelper;->mAlphaAnimationSpec:Lcom/android/server/wm/DimmerAnimationHelper$AnimationSpec;

    iget-object v0, v3, Lcom/android/server/wm/DimmerAnimationHelper;->mAnimationAdapterFactory:Lcom/android/server/wm/DimmerAnimationHelper$AnimationAdapterFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/wm/LocalAnimationAdapter;

    invoke-direct {v0, v10, v4}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    iput-object v0, v3, Lcom/android/server/wm/DimmerAnimationHelper;->mLocalAnimationAdapter:Lcom/android/server/wm/LocalAnimationAdapter;

    iget v0, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mAlpha:F

    iget-object v4, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getLayerId()I

    move-result v4

    iget v5, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    int-to-float v5, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v4, v6, v5}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x953a

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v4, v3, Lcom/android/server/wm/DimmerAnimationHelper;->mLocalAnimationAdapter:Lcom/android/server/wm/LocalAnimationAdapter;

    iget-object v5, v1, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    new-instance v6, Lcom/android/server/wm/DimmerAnimationHelper$$ExternalSyntheticLambda0;

    invoke-direct {v6, v3, v1, v0}, Lcom/android/server/wm/DimmerAnimationHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DimmerAnimationHelper;Lcom/android/server/wm/Dimmer$DimState;F)V

    const/4 v0, 0x4

    invoke-virtual {v4, v5, v2, v0, v6}, Lcom/android/server/wm/LocalAnimationAdapter;->startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    goto :goto_288

    :cond_25f
    :goto_25f
    aget-boolean v0, v9, v15

    if-eqz v0, :cond_283

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    float-to-double v4, v5

    iget v6, v8, Lcom/android/server/wm/DimmerAnimationHelper$Change;->mBlurRadius:I

    int-to-long v6, v6

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_DIMMER:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v0, v4, v5}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v4, 0x346ea5c6c622399aL  # 3.905950942569482E-56

    const/16 v6, 0x18

    invoke-static {v8, v4, v5, v6, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1342711150;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_283
    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/DimmerAnimationHelper;->setCurrentAlphaBlur(Lcom/android/server/wm/Dimmer$DimState;Landroid/view/SurfaceControl$Transaction;)V

    iput-boolean v15, v1, Lcom/android/server/wm/Dimmer$DimState;->mSkipAnimation:Z

    :cond_288
    :goto_288
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dimmer#DimState with host="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/Dimmer$DimState;->mHostContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
