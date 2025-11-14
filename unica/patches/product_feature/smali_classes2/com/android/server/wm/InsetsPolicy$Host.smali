.class public final Lcom/android/server/wm/InsetsPolicy$Host;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/view/InsetsController$Host;


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mName:Ljava/lang/String;

.field public final mTmpFloat9:[F


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mTmpFloat9:[F

    iput-object p1, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final addOnPreDrawRunnable(Ljava/lang/Runnable;)V
    .registers 2

    return-void
.end method

.method public final varargs applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .registers 6

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    if-ltz v1, :cond_14

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mTmpFloat9:[F

    invoke-static {v0, v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;[F)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_14
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void
.end method

.method public final dipToPx(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .registers 2

    return-void
.end method

.method public final dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V
    .registers 2

    return-void
.end method

.method public final dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .registers 3

    return-object p1
.end method

.method public final dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .registers 3

    return-object p2
.end method

.method public final getHandler()Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRootViewTitle()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSystemBarsAppearance()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final getSystemBarsBehavior()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public final getWindowToken()Landroid/os/IBinder;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final hasAnimationCallbacks()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final notifyInsetsChanged()V
    .registers 1

    return-void
.end method

.method public final postInsetsAnimationCallback(Ljava/lang/Runnable;)V
    .registers 2

    return-void
.end method

.method public final releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .registers 2

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    return-void
.end method

.method public final setSystemBarsAppearance(II)V
    .registers 3

    return-void
.end method

.method public final setSystemBarsBehavior(I)V
    .registers 2

    return-void
.end method

.method public final updateRequestedVisibleTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 3

    return-void
.end method
