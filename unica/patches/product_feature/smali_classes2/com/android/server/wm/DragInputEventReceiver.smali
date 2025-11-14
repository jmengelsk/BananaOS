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
    .registers 4

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
    .registers 14

    const-string/jumbo v0, "WindowManager"

    const-string v1, "Got UP on move channel; dropping at "

    const-string v2, "Button no longer pressed; dropping at "

    const/4 v3, 0x0

    :try_start_8
    instance-of v4, p1, Landroid/view/MotionEvent;

    if-eqz v4, :cond_a9

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v4

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-eqz v4, :cond_a9

    iget-boolean v4, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    if-eqz v4, :cond_1a

    goto/16 :goto_a9

    :cond_1a
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

    if-eqz v9, :cond_34

    move v9, v10

    goto :goto_35

    :cond_34
    move v9, v3

    :goto_35
    iget-boolean v11, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    if-eqz v11, :cond_43

    iput-boolean v9, p0, Lcom/android/server/wm/DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    iput-boolean v3, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    goto :goto_43

    :catchall_3e
    move-exception v0

    goto/16 :goto_b6

    :catch_41
    move-exception v1

    goto :goto_ad

    :cond_43
    :goto_43
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v4
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_47} :catch_41
    .catchall {:try_start_8 .. :try_end_47} :catchall_3e

    if-eqz v4, :cond_9f

    const-string v11, ","

    if-eq v4, v10, :cond_7c

    if-eq v4, v5, :cond_5e

    const/4 v1, 0x3

    if-eq v4, v1, :cond_56

    invoke-virtual {p0, p1, v3}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_56
    :try_start_56
    const-string v1, "Drag cancelled!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    goto :goto_93

    :cond_5e
    iget-boolean v1, p0, Lcom/android/server/wm/DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    if-eqz v1, :cond_93

    if-nez v9, :cond_93

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    goto :goto_93

    :cond_7c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    :cond_93
    :goto_93
    iget-object v1, p0, Lcom/android/server/wm/DragInputEventReceiver;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-boolean v2, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    xor-int/2addr v2, v10

    invoke-virtual {v1, v7, v8, v6, v2}, Lcom/android/server/wm/DragDropController;->handleMotionEvent(FFIZ)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_9b} :catch_41
    .catchall {:try_start_56 .. :try_end_9b} :catchall_3e

    invoke-virtual {p0, p1, v10}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_9f
    :try_start_9f
    const-string/jumbo v1, "Unexpected ACTION_DOWN in drag layer"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a5} :catch_41
    .catchall {:try_start_9f .. :try_end_a5} :catchall_3e

    invoke-virtual {p0, p1, v3}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_a9
    :goto_a9
    invoke-virtual {p0, p1, v3}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :goto_ad
    :try_start_ad
    const-string v2, "Exception caught by drag handleMotion"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b2
    .catchall {:try_start_ad .. :try_end_b2} :catchall_3e

    invoke-virtual {p0, p1, v3}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :goto_b6
    invoke-virtual {p0, p1, v3}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v0
.end method
