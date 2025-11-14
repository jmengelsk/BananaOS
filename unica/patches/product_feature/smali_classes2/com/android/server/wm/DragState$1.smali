.class public final Lcom/android/server/wm/DragState$1;
.super Lcom/android/server/wm/DragState$AnimationListener;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/wm/DragState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DragState;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/wm/DragState$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    const/4 p2, 0x3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DragState$AnimationListener;-><init>(Lcom/android/server/wm/DragState;I)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Lcom/android/server/wm/DragState$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/server/wm/DragState;->-$$Nest$mendAnimator(Lcom/android/server/wm/DragState;I)V

    iget-object p0, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    iget-object p0, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/DragState;->mIsUpdatingClipdata:Z

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/server/wm/DragState;->-$$Nest$mendAnimator(Lcom/android/server/wm/DragState;I)V

    iget-object p0, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    iget-object p0, p0, Lcom/android/server/wm/DragState;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Lcom/android/server/wm/DragDropController$DragHandler;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    iget v0, p0, Lcom/android/server/wm/DragState$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/server/wm/DragState$AnimationListener;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_0
    const-string/jumbo v0, "scale"

    iget-object v1, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    iget-object v1, v1, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/SurfaceControl$Transaction;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    iget-object v1, v1, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_0

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
    const-string/jumbo v1, "pivot_offset"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v3, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    iget-object v3, v3, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/server/wm/DragState$1;->this$0:Lcom/android/server/wm/DragState;

    iget-object p1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v0, p0, Lcom/android/server/wm/DragState;->mCenterPivotOffsetX:F

    add-float/2addr v0, v1

    iget p0, p0, Lcom/android/server/wm/DragState;->mCenterPivotOffsetY:F

    add-float/2addr p0, v1

    invoke-virtual {v2, p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
