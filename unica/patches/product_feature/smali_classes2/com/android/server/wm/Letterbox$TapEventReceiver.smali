.class public final Lcom/android/server/wm/Letterbox$TapEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final mDoubleTapDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Letterbox;Landroid/view/InputChannel;Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;)V
    .locals 1

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    new-instance p2, Lcom/android/server/wm/Letterbox$DoubleTapListener;

    invoke-direct {p2, p1, p3}, Lcom/android/server/wm/Letterbox$DoubleTapListener;-><init>(Lcom/android/server/wm/Letterbox;Lcom/android/server/wm/WindowManagerService;)V

    new-instance p1, Landroid/view/GestureDetector;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, p3, p2, p4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/wm/Letterbox$TapEventReceiver;->mDoubleTapDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$TapEventReceiver;->mDoubleTapDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method
