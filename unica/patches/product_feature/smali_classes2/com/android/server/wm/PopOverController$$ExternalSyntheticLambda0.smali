.class public final synthetic Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PopOverController;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/android/server/wm/WindowState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PopOverController;[ZZLcom/android/server/wm/WindowState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/PopOverController;

    iput-object p2, p0, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;->f$1:[Z

    iput-boolean p3, p0, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;->f$2:Z

    iput-object p4, p0, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/wm/WindowState;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/PopOverController;

    iget-object v1, p0, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;->f$1:[Z

    iget-boolean v2, p0, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;->f$2:Z

    iget-object p0, p0, Lcom/android/server/wm/PopOverController$$ExternalSyntheticLambda0;->f$3:Lcom/android/server/wm/WindowState;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    iget-boolean v3, v3, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    iget-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    const/4 v3, 0x0

    aput-boolean v2, v1, v3

    if-ne p1, p0, :cond_2

    return v3

    :cond_2
    const/16 p0, 0x10

    invoke-virtual {p1, v3, p0}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    :cond_3
    const p0, 0x3a83126f    # 0.001f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v2, :cond_4

    move v4, v1

    goto :goto_0

    :cond_4
    move v4, p0

    :goto_0
    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    move p0, v1

    :goto_1
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, p0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x64

    if-eqz v2, :cond_6

    move-wide v6, v4

    goto :goto_2

    :cond_6
    const-wide/16 v6, 0xc8

    :goto_2
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    if-eqz v2, :cond_7

    const-wide/16 v4, 0x0

    :cond_7
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    new-instance v4, Lcom/android/server/wm/PopOverController$1;

    invoke-direct {v4, v0, v2, p1, p0}, Lcom/android/server/wm/PopOverController$1;-><init>(Lcom/android/server/wm/PopOverController;ZLcom/android/server/wm/WindowState;F)V

    invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    return v3

    :cond_8
    :goto_3
    return v4
.end method
