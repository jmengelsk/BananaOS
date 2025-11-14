.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_c2

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mHandleExitSplashScreen:Z

    if-eqz p0, :cond_11

    iget p0, p1, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_11

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1

    :pswitch_13  #0xc
    check-cast p1, Lcom/android/server/wm/WindowState;

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_23

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    return v0

    :pswitch_25  #0xb
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    if-eqz p0, :cond_33

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz p0, :cond_33

    const/4 p0, 0x1

    goto :goto_34

    :cond_33
    const/4 p0, 0x0

    :goto_34
    return p0

    :pswitch_35  #0xa
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz p0, :cond_43

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result p0

    if-eqz p0, :cond_43

    const/4 p0, 0x1

    goto :goto_44

    :cond_43
    const/4 p0, 0x0

    :goto_44
    return p0

    :pswitch_45  #0x9
    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    move-result p0

    return p0

    :pswitch_4c  #0x8
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    return p0

    :pswitch_51  #0x7
    check-cast p1, Lcom/android/server/wm/WindowState;

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result p0

    return p0

    :pswitch_5a  #0x6
    check-cast p1, Lcom/android/server/wm/WindowState;

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p1, 0x3

    if-ne p0, p1, :cond_65

    const/4 p0, 0x1

    goto :goto_66

    :cond_65
    const/4 p0, 0x0

    :goto_66
    return p0

    :pswitch_67  #0x5
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    iget-boolean p0, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    if-eqz p0, :cond_75

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p0, :cond_75

    const/4 p0, 0x1

    goto :goto_76

    :cond_75
    const/4 p0, 0x0

    :goto_76
    return p0

    :pswitch_77  #0x4
    check-cast p1, Lcom/android/server/wm/WindowState;

    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez p0, :cond_8b

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_8c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8c

    const/4 v0, 0x4

    if-ne p0, v0, :cond_8b

    goto :goto_8c

    :cond_8b
    const/4 p1, 0x0

    :cond_8c
    :goto_8c
    return p1

    :pswitch_8d  #0x3
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-boolean p0, p1, Lcom/android/server/wm/WindowToken;->mIsExiting:Z

    if-nez p0, :cond_9d

    iget-boolean p0, p1, Lcom/android/server/wm/WindowToken;->mClientVisible:Z

    if-eqz p0, :cond_9d

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz p0, :cond_9d

    const/4 p0, 0x1

    goto :goto_9e

    :cond_9d
    const/4 p0, 0x0

    :goto_9e
    return p0

    :pswitch_9f  #0x2
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result p0

    return p0

    :pswitch_a7  #0x1
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    iget-boolean p0, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    if-nez p0, :cond_b9

    sget-object p0, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p0

    if-nez p0, :cond_b9

    const/4 p0, 0x1

    goto :goto_ba

    :cond_b9
    const/4 p0, 0x0

    :goto_ba
    return p0

    :pswitch_bb  #0x0
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_bb  #00000000
        :pswitch_a7  #00000001
        :pswitch_9f  #00000002
        :pswitch_8d  #00000003
        :pswitch_77  #00000004
        :pswitch_67  #00000005
        :pswitch_5a  #00000006
        :pswitch_51  #00000007
        :pswitch_4c  #00000008
        :pswitch_45  #00000009
        :pswitch_35  #0000000a
        :pswitch_25  #0000000b
        :pswitch_13  #0000000c
    .end packed-switch
.end method
