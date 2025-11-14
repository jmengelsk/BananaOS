.class public final Lcom/android/server/wm/DragState$2;
.super Lcom/android/server/wm/DragState$AnimationListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/DragState;

.field public final synthetic val$scaleInAnimatorSet:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DragState;Landroid/animation/AnimatorSet;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/DragState$2;->this$0:Lcom/android/server/wm/DragState;

    iput-object p2, p0, Lcom/android/server/wm/DragState$2;->val$scaleInAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p2, 0x3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;I)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/DragState$2;->val$scaleInAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 10

    const-string/jumbo v0, "scale"

    iget-object v1, p0, Lcom/android/server/wm/DragState$2;->this$0:Lcom/android/server/wm/DragState;

    iget-object v1, v1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    :try_start_10
    iget-object v1, p0, Lcom/android/server/wm/DragState$2;->this$0:Lcom/android/server/wm/DragState;

    iget-object v1, v1, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_28

    const-string/jumbo p0, "WindowManager"

    const-string/jumbo p1, "mSurfaceControl is null, animation cannot be updated."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_25

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->close()V

    :cond_24
    return-void

    :catchall_25
    move-exception v0

    move-object p0, v0

    goto :goto_74

    :cond_28
    :try_start_28
    const-string/jumbo v1, "pivot_offset"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v3, p0, Lcom/android/server/wm/DragState$2;->this$0:Lcom/android/server/wm/DragState;

    iget v4, v3, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iget v5, v3, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float/2addr v4, v5

    sub-float/2addr v4, v1

    iput v4, v3, Lcom/android/server/wm/DragState;->mCenterPivotOffsetX:F

    iget v4, v3, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iget v5, v3, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float/2addr v4, v5

    sub-float/2addr v4, v1

    iput v4, v3, Lcom/android/server/wm/DragState;->mCenterPivotOffsetY:F

    iget-object v3, v3, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/server/wm/DragState$2;->this$0:Lcom/android/server/wm/DragState;

    iget-object p1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v0, p0, Lcom/android/server/wm/DragState;->mCenterPivotOffsetX:F

    iget p0, p0, Lcom/android/server/wm/DragState;->mCenterPivotOffsetY:F

    invoke-virtual {v2, p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_70
    .catchall {:try_start_28 .. :try_end_70} :catchall_25

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void

    :goto_74
    if-eqz v2, :cond_7f

    :try_start_76
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_7a

    goto :goto_7f

    :catchall_7a
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7f
    :goto_7f
    throw p0
.end method
