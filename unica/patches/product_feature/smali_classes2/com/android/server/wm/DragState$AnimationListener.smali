.class public Lcom/android/server/wm/DragState$AnimationListener;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/wm/DragState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DragState;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/wm/DragState$AnimationListener;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onAnimationCancel$com$android$server$wm$DragState$AlphaAnimationListener(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationCancel$com$android$server$wm$DragState$AnimationListener(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationCancel$com$android$server$wm$DragState$PositionAnimationListener(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationCancel$com$android$server$wm$DragState$ScaleAnimationListener(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationRepeat$com$android$server$wm$DragState$AlphaAnimationListener(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationRepeat$com$android$server$wm$DragState$AnimationListener(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationRepeat$com$android$server$wm$DragState$PositionAnimationListener(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationRepeat$com$android$server$wm$DragState$ScaleAnimationListener(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationStart$com$android$server$wm$DragState$AlphaAnimationListener(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationStart$com$android$server$wm$DragState$AnimationListener(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationStart$com$android$server$wm$DragState$PositionAnimationListener(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final onAnimationStart$com$android$server$wm$DragState$ScaleAnimationListener(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget p0, p0, Lcom/android/server/wm/DragState$AnimationListener;->$r8$classId:I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Lcom/android/server/wm/DragState$AnimationListener;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/server/wm/DragState;->-$$Nest$mendAnimator(Lcom/android/server/wm/DragState;I)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/wm/DragState;->-$$Nest$mendAnimator(Lcom/android/server/wm/DragState;I)V

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MT_DND_SEAMLESS_ANIMATION:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    :cond_0
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/wm/DragState;->-$$Nest$mendAnimator(Lcom/android/server/wm/DragState;I)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/DragState;->mAnimationCompleted:Z

    iget-object p0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object p0, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    iget p0, p0, Lcom/android/server/wm/DragState$AnimationListener;->$r8$classId:I

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget p0, p0, Lcom/android/server/wm/DragState$AnimationListener;->$r8$classId:I

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    iget v0, p0, Lcom/android/server/wm/DragState$AnimationListener;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "scale"

    iget-object v1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object v1, v1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v3, :cond_0

    const-string/jumbo p0, "WindowManager"

    const-string/jumbo p1, "mSurfaceControl is null, animation cannot be updated."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    :try_start_3
    const-string/jumbo v0, "x"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string/jumbo v2, "y"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_DND_ANIMATION:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-boolean v3, v2, Lcom/android/server/wm/DragState;->mNeedAdjustPosition:Z

    if-eqz v3, :cond_4

    iget v3, v2, Lcom/android/server/wm/DragState;->mTargetX:F

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result v3

    iget-object v5, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v6, v5, Lcom/android/server/wm/DragState;->mTargetY:F

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result v5

    invoke-static {v2, v0, p1, v3, v5}, Lcom/android/server/wm/DragState;->-$$Nest$mcalculateDistance(Lcom/android/server/wm/DragState;FFFF)F

    move-result p1

    iget-object v0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v2, v0, Lcom/android/server/wm/DragState;->mSourceX:F

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v5, v3, Lcom/android/server/wm/DragState;->mSourceY:F

    invoke-virtual {v3, v5, v7}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result v3

    iget-object v5, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v6, v5, Lcom/android/server/wm/DragState;->mTargetX:F

    invoke-virtual {v5, v6, v4}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v8, v6, Lcom/android/server/wm/DragState;->mTargetY:F

    invoke-virtual {v6, v8, v7}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result v6

    invoke-static {v0, v2, v3, v5, v6}, Lcom/android/server/wm/DragState;->-$$Nest$mcalculateDistance(Lcom/android/server/wm/DragState;FFFF)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_3

    div-float v2, p1, v0

    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v0, p1, Lcom/android/server/wm/DragState;->mCurrentDisplayX:F

    iget v3, p1, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    iget v5, p1, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float/2addr v3, v5

    sub-float/2addr v0, v3

    invoke-virtual {p1, v0, v4}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result p1

    iget-object v0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v3, v0, Lcom/android/server/wm/DragState;->mCurrentDisplayY:F

    iget v5, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iget v6, v0, Lcom/android/server/wm/DragState;->mScaleAnimSource:F

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    invoke-virtual {v0, v3, v7}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result v0

    iget-object v3, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v5, v3, Lcom/android/server/wm/DragState;->mSourceX:F

    invoke-virtual {v3, v5, v4}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result v3

    sub-float/2addr v3, p1

    mul-float/2addr v3, v2

    add-float/2addr p1, v3

    iget-object v3, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget v4, v3, Lcom/android/server/wm/DragState;->mSourceY:F

    invoke-virtual {v3, v4, v7}, Lcom/android/server/wm/DragState;->adjustPosition(FI)F

    move-result v3

    sub-float/2addr v3, v0

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    move v9, v0

    move v0, p1

    move p1, v9

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_7

    :cond_4
    :goto_4
    iget-object p0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object p0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez p0, :cond_5

    const-string/jumbo p0, "WindowManager"

    const-string/jumbo p1, "mSurfaceControl is null, animation cannot be updated."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_6

    :goto_5
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    goto :goto_6

    :cond_5
    :try_start_4
    invoke-virtual {v1, p0, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :cond_6
    :goto_6
    return-void

    :goto_7
    if-eqz v1, :cond_7

    :try_start_5
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_8
    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    :try_start_6
    iget-object v0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    const-string/jumbo v2, "alpha"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/android/server/wm/DragState;->mCurrentAlpha:F

    iget-object p0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object p1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez p1, :cond_8

    const-string/jumbo p0, "WindowManager"

    const-string/jumbo p1, "mSurfaceControl is null, animation cannot be updated."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v1, :cond_9

    :goto_9
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object p0, v0

    goto :goto_b

    :cond_8
    :try_start_7
    iget p0, p0, Lcom/android/server/wm/DragState;->mCurrentAlpha:F

    invoke-virtual {v1, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_9

    :cond_9
    :goto_a
    return-void

    :goto_b
    if-eqz v1, :cond_a

    :try_start_8
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_c
    throw p0

    :pswitch_2
    const-string/jumbo v0, "scale"

    iget-object v1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object v1, v1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    :try_start_9
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_DND_ANIMATION:Z

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object v1, v1, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_b

    const-string/jumbo p0, "WindowManager"

    const-string/jumbo p1, "mSurfaceControl is null, animation cannot be updated."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v2, :cond_c

    :goto_d
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->close()V

    goto :goto_e

    :catchall_6
    move-exception v0

    move-object p0, v0

    goto :goto_f

    :cond_b
    :try_start_a
    iget-object v1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object v1, v1, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string/jumbo v3, "x"

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const-string/jumbo v4, "y"

    invoke-virtual {p1, v4}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object v1, v1, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string/jumbo v3, "alpha"

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/server/wm/DragState$AnimationListener;->this$0:Lcom/android/server/wm/DragState;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_d

    :cond_c
    :goto_e
    return-void

    :goto_f
    if-eqz v2, :cond_d

    :try_start_b
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_10

    :catchall_7
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_10
    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
