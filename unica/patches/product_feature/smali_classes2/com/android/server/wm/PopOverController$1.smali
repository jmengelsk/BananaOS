.class public final Lcom/android/server/wm/PopOverController$1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/PopOverController;

.field public final synthetic val$apply:Z

.field public final synthetic val$toAlpha:F

.field public final synthetic val$win:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PopOverController;ZLcom/android/server/wm/WindowState;F)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/PopOverController$1;->this$0:Lcom/android/server/wm/PopOverController;

    iput-boolean p2, p0, Lcom/android/server/wm/PopOverController$1;->val$apply:Z

    iput-object p3, p0, Lcom/android/server/wm/PopOverController$1;->val$win:Lcom/android/server/wm/WindowState;

    iput p4, p0, Lcom/android/server/wm/PopOverController$1;->val$toAlpha:F

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object p1, p0, Lcom/android/server/wm/PopOverController$1;->this$0:Lcom/android/server/wm/PopOverController;

    iget-object p1, p1, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    :try_start_c
    iget-object v0, p0, Lcom/android/server/wm/PopOverController$1;->val$win:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, p0, Lcom/android/server/wm/PopOverController$1;->val$apply:Z

    if-eqz v1, :cond_19

    iget v1, p0, Lcom/android/server/wm/PopOverController$1;->val$toAlpha:F

    goto :goto_1b

    :catchall_17
    move-exception p0

    goto :goto_29

    :cond_19
    const/high16 v1, -0x40800000  # -1.0f

    :goto_1b
    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mPopOverAlpha:F

    iget-object p0, p0, Lcom/android/server/wm/PopOverController$1;->this$0:Lcom/android/server/wm/PopOverController;

    iget-object p0, p0, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    monitor-exit p1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_29
    :try_start_29
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    iget-boolean p1, p0, Lcom/android/server/wm/PopOverController$1;->val$apply:Z

    if-nez p1, :cond_2a

    iget-object p1, p0, Lcom/android/server/wm/PopOverController$1;->this$0:Lcom/android/server/wm/PopOverController;

    iget-object p1, p1, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p1

    :try_start_10
    iget-object v0, p0, Lcom/android/server/wm/PopOverController$1;->val$win:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/high16 v1, -0x40800000  # -1.0f

    iput v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mPopOverAlpha:F

    iget-object p0, p0, Lcom/android/server/wm/PopOverController$1;->this$0:Lcom/android/server/wm/PopOverController;

    iget-object p0, p0, Lcom/android/server/wm/PopOverController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    monitor-exit p1
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_24
    move-exception p0

    :try_start_25
    monitor-exit p1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_2a
    return-void
.end method
