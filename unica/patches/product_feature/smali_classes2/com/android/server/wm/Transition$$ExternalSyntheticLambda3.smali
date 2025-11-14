.class public final synthetic Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget p0, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch p0, :pswitch_data_30

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_f

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0

    :pswitch_11  #0x2
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_21

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    return p0

    :pswitch_23  #0x1
    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isTranslucentForTransition()Z

    move-result p0

    return p0

    :pswitch_2a  #0x0
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    return p0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2a  #00000000
        :pswitch_23  #00000001
        :pswitch_11  #00000002
    .end packed-switch
.end method
