.class public final Lcom/android/server/wm/ActivityRecordInputSink;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

.field public final mIsCompatEnabled:Z

.field public final mName:Ljava/lang/String;

.field public mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v0, 0xb978b5f

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mIsCompatEnabled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ActivityRecordInputSink "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mName:Ljava/lang/String;

    if-nez p2, :cond_39

    goto :goto_49

    :cond_39
    const-wide/32 v0, 0x15589dda

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p0

    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    if-eqz p0, :cond_4a

    if-eqz p3, :cond_49

    goto :goto_4a

    :cond_49
    :goto_49
    return-void

    :cond_4a
    :goto_4a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p0

    iput p0, p2, Lcom/android/server/wm/ActivityRecord;->mAllowedTouchUid:I

    return-void
.end method


# virtual methods
.method public final applyChangesToSurfaceIfChanged(Landroid/view/SurfaceControl$Transaction;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x0

    if-nez v0, :cond_2d

    new-instance v0, Lcom/android/server/wm/InputWindowHandleWrapper;

    new-instance v5, Landroid/view/InputWindowHandle;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v6

    invoke-direct {v5, v4, v6}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;I)V

    iput-boolean v1, v5, Landroid/view/InputWindowHandle;->replaceTouchableRegionWithCrop:Z

    iput-object v2, v5, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    const/16 v6, 0x7e6

    iput v6, v5, Landroid/view/InputWindowHandle;->layoutParamsType:I

    sget v6, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    iput v6, v5, Landroid/view/InputWindowHandle;->ownerPid:I

    sget v6, Lcom/android/server/wm/WindowManagerService;->MY_UID:I

    iput v6, v5, Landroid/view/InputWindowHandle;->ownerUid:I

    const/4 v6, 0x5

    iput v6, v5, Landroid/view/InputWindowHandle;->inputConfig:I

    invoke-direct {v0, v5}, Lcom/android/server/wm/InputWindowHandleWrapper;-><init>(Landroid/view/InputWindowHandle;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    :cond_2d
    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_36

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_37

    :cond_36
    move-object v0, v4

    :goto_37
    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz v0, :cond_4f

    iget v7, v0, Lcom/android/server/wm/ActivityRecord;->mAllowedTouchUid:I

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v8

    if-eq v7, v8, :cond_ae

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    goto :goto_ae

    :cond_4f
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mIsCompatEnabled:Z

    if-eqz v0, :cond_ae

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->inTransitionSelfOrParent()Z

    move-result v0

    if-nez v0, :cond_ae

    iget-boolean v0, v3, Lcom/android/server/wm/ActivityRecord;->mActivityRecordInputSinkEnabled:Z

    if-eqz v0, :cond_ae

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_64

    goto :goto_ae

    :cond_64
    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    iget-boolean v0, v0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    if-eqz v0, :cond_6b

    goto :goto_ae

    :cond_6b
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v0, :cond_76

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isSplitEmbedded()Z

    move-result v0

    if-eqz v0, :cond_76

    goto :goto_ae

    :cond_76
    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_8d

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8d

    goto :goto_ae

    :cond_8d
    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_a8

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isTaskViewTask()Z

    move-result v7

    if-eqz v7, :cond_a8

    iget-object v7, v3, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskViewTaskOrganizerTaskId:I

    invoke-virtual {v7, v0}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_a8

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFreeformForceHidden()Z

    move-result v0

    if-eqz v0, :cond_a8

    goto :goto_ae

    :cond_a8
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputConfigMasked(II)V

    goto :goto_b3

    :cond_ae
    :goto_ae
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {v0, v6, v6}, Lcom/android/server/wm/InputWindowHandleWrapper;->setInputConfigMasked(II)V

    :goto_b3
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v6

    iget-object v7, v0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    iget v8, v7, Landroid/view/InputWindowHandle;->displayId:I

    if-ne v8, v6, :cond_c0

    goto :goto_c4

    :cond_c0
    iput v6, v7, Landroid/view/InputWindowHandle;->displayId:I

    iput-boolean v1, v0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    :goto_c4
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mInputWindowHandleWrapper:Lcom/android/server/wm/InputWindowHandleWrapper;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_e7

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    const-string v2, "ActivityRecordInputSink.createSurface"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mSurfaceControl:Landroid/view/SurfaceControl;

    :cond_e7
    iget-boolean v1, v0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    if-eqz v1, :cond_f4

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecordInputSink;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, v0, Lcom/android/server/wm/InputWindowHandleWrapper;->mHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {p1, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    iput-boolean v5, v0, Lcom/android/server/wm/InputWindowHandleWrapper;->mChanged:Z

    :cond_f4
    return-void
.end method
