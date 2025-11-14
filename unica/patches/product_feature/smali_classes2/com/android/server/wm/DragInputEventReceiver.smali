.class public final Lcom/android/server/wm/DragInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDragDropController:Lcom/android/server/wm/DragDropController;

.field public mIsStartEvent:Z

.field public mMuteInput:Z

.field public mStylusButtonDownAtStart:Z


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/server/wm/DragDropController;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    iput-object p3, p0, Lcom/android/server/wm/DragInputEventReceiver;->mDragDropController:Lcom/android/server/wm/DragDropController;

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 12

    const-string/jumbo v0, "WindowManager"

    const-string v1, "Got UP on move channel; dropping at "

    const-string v2, "Button no longer pressed; dropping at "

    const/4 v3, 0x0

    :try_start_0
    instance-of v4, p1, Landroid/view/MotionEvent;

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v4

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    if-eqz v4, :cond_0

    goto/16 :goto_3

    :cond_0
    move-object v4, p1

    check-cast v4, Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v9

    and-int/lit8 v9, v9, 0x20

    const/4 v10, 0x1

    if-eqz v9, :cond_1

    move v9, v10

    goto :goto_0

    :cond_1
    move v9, v3

    :goto_0
    iget-boolean v11, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    if-eqz v11, :cond_2

    iput-boolean v9, p0, Lcom/android/server/wm/DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    iput-boolean v3, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_2
    :goto_1
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_7

    const-string v11, ","

    if-eq v4, v10, :cond_5

    if-eq v4, v5, :cond_4

    const/4 v1, 0x3

    if-eq v4, v1, :cond_3

    invoke-virtual {p0, p1, v3}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_3
    :try_start_1
    const-string v1, "Drag cancelled!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    goto :goto_2

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/wm/DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    if-eqz v1, :cond_6

    if-nez v9, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/DragInputEventReceiver;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-boolean v2, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    xor-int/2addr v2, v10

    invoke-virtual {v1, v7, v8, v6, v2}, Lcom/android/server/wm/DragDropController;->handleMotionEvent(FFIZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, p1, v10}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_7
    :try_start_2
    const-string/jumbo v1, "Unexpected ACTION_DOWN in drag layer"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, p1, v3}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_8
    :goto_3
    invoke-virtual {p0, p1, v3}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :goto_4
    :try_start_3
    const-string v2, "Exception caught by drag handleMotion"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0, p1, v3}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :goto_5
    invoke-virtual {p0, p1, v3}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v0
.end method
