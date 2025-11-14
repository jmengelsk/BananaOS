.class public final synthetic Lcom/android/server/wm/BackNavigationController$AnimationHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/view/SurfaceControl$TransactionCommittedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BackNavigationController$AnimationHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    return-void
.end method


# virtual methods
.method public final onTransactionCommitted()V
    .registers 3

    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/BackNavigationController$AnimationHandler;

    iget-object v0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    :try_start_a
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$AnimationHandler;->mOpenAnimAdaptor:Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;

    if-eqz p0, :cond_15

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/BackNavigationController$AnimationHandler$BackWindowAnimationAdaptorWrapper;->cleanUpWindowlessSurface(Z)V

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_1a

    :cond_15
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1a
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
