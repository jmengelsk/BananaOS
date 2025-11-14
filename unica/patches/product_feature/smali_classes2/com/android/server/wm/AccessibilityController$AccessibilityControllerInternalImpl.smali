.class public final Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$AccessibilityControllerInternal;


# static fields
.field public static sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;


# instance fields
.field public mCallbacksDispatcher:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;

.field public volatile mEnabledTracingFlags:J

.field public final mLooper:Landroid/os/Looper;

.field public final mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mLooper:Landroid/os/Looper;

    sget-object v0, Lcom/android/server/wm/AccessibilityController;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-direct {v1, p1}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    sput-object v1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->sInstance:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mEnabledTracingFlags:J

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final isTracingEnabled(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mEnabledTracingFlags:J

    and-long p0, p1, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final logTrace$1()V
    .locals 2

    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    new-instance v0, Ljava/util/HashSet;

    const-string/jumbo v1, "logTrace"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onRectangleOnScreenRequested(ILandroid/graphics/Rect;)V
    .locals 7

    const-wide/16 v0, 0x800

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/wm/AccessibilityController;->STATIC_LOCK:Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace$1()V

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->mCallbacksDispatcher:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;

    if-eqz p0, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;->mAccessibilityTracing:Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->isTracingEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl;->logTrace$1()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;->mCallbacks:Lcom/android/server/accessibility/magnification/MagnificationController;

    new-instance v1, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/magnification/MagnificationController;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p2, Landroid/graphics/Rect;->left:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p1, p2, Landroid/graphics/Rect;->top:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget p1, p2, Landroid/graphics/Rect;->right:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityControllerInternalImpl$UiChangesForAccessibilityCallbacksDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method
