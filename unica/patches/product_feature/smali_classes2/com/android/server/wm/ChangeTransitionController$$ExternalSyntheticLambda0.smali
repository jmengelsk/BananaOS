.class public final synthetic Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget p0, p0, Lcom/android/server/wm/ChangeTransitionController$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_52

    check-cast p1, Lcom/android/server/wm/WindowState;

    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz p0, :cond_17

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result p0

    if-eqz p0, :cond_17

    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0

    :pswitch_19  #0x2
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_2b

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result p0

    if-eqz p0, :cond_2b

    const/4 p0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    :goto_2c
    return p0

    :pswitch_2d  #0x1
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_3d

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result p0

    if-eqz p0, :cond_3d

    const/4 p0, 0x1

    goto :goto_3e

    :cond_3d
    const/4 p0, 0x0

    :goto_3e
    return p0

    :pswitch_3f  #0x0
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_4f

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result p0

    if-eqz p0, :cond_4f

    const/4 p0, 0x1

    goto :goto_50

    :cond_4f
    const/4 p0, 0x0

    :goto_50
    return p0

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_3f  #00000000
        :pswitch_2d  #00000001
        :pswitch_19  #00000002
    .end packed-switch
.end method
