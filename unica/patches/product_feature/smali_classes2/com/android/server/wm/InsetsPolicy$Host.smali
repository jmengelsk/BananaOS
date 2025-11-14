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
    .locals 1

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
    .locals 0

    return-void
.end method

.method public final varargs applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V
    .locals 4

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mTmpFloat9:[F

    invoke-static {v0, v2, v3}, Landroid/view/SyncRtSurfaceTransactionApplier;->applyParams(Landroid/view/SurfaceControl$Transaction;Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;[F)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void
.end method

.method public final dipToPx(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final dispatchWindowInsetsAnimationEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 0

    return-void
.end method

.method public final dispatchWindowInsetsAnimationPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 0

    return-void
.end method

.method public final dispatchWindowInsetsAnimationProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 0

    return-object p1
.end method

.method public final dispatchWindowInsetsAnimationStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 0

    return-object p2
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRootViewTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/InsetsPolicy$Host;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSystemBarsAppearance()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getSystemBarsBehavior()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final getWindowToken()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final hasAnimationCallbacks()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final notifyInsetsChanged()V
    .locals 0

    return-void
.end method

.method public final postInsetsAnimationCallback(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public final releaseSurfaceControlFromRt(Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    return-void
.end method

.method public final setSystemBarsAppearance(II)V
    .locals 0

    return-void
.end method

.method public final setSystemBarsBehavior(I)V
    .locals 0

    return-void
.end method

.method public final updateRequestedVisibleTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    return-void
.end method
