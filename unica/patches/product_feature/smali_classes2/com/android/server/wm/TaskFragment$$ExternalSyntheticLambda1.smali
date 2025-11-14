.class public final synthetic Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget p0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p0, :pswitch_data_7e

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p0, :cond_15

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-nez p0, :cond_15

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchedFromBubble:Z

    if-nez p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0

    :pswitch_17  #0x7
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p0, :cond_23

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-nez p0, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    return p0

    :pswitch_25  #0x6
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p0, :cond_31

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchedFromBubble:Z

    if-nez p0, :cond_31

    const/4 p0, 0x1

    goto :goto_32

    :cond_31
    const/4 p0, 0x0

    :goto_32
    return p0

    :pswitch_33  #0x5
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_3a  #0x4
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->inTransitionSelfOrParent()Z

    move-result p0

    if-eqz p0, :cond_4a

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->allowEdgeExtension()Z

    move-result p0

    if-eqz p0, :cond_4a

    const/4 p0, 0x1

    goto :goto_4b

    :cond_4a
    const/4 p0, 0x0

    :goto_4b
    return p0

    :pswitch_4c  #0x3
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_53  #0x2
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result p0

    if-eqz p0, :cond_63

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result p0

    if-eqz p0, :cond_63

    const/4 p0, 0x1

    goto :goto_64

    :cond_63
    const/4 p0, 0x0

    :goto_64
    return p0

    :pswitch_65  #0x1
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->allowAppBackgroundLayerForTransition()Z

    move-result p0

    return p0

    :pswitch_6c  #0x0
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_7c

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_7c

    const/4 v0, 0x1

    :cond_7c
    return v0

    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_6c  #00000000
        :pswitch_65  #00000001
        :pswitch_53  #00000002
        :pswitch_4c  #00000003
        :pswitch_3a  #00000004
        :pswitch_33  #00000005
        :pswitch_25  #00000006
        :pswitch_17  #00000007
    .end packed-switch
.end method
