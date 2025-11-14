.class public final synthetic Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget p0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_7a

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p0, :cond_1d

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    if-eqz p0, :cond_1d

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-nez p0, :cond_1d

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isAlwaysOnTop()Z

    move-result p0

    if-nez p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0

    :pswitch_1f  #0x6
    check-cast p1, Lcom/android/server/wm/TaskFragment;

    iget-boolean p0, p1, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    return p0

    :pswitch_24  #0x5
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result p0

    return p0

    :pswitch_2b  #0x4
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result p0

    if-eqz p0, :cond_41

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    move-result p0

    if-eqz p0, :cond_41

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p0

    if-nez p0, :cond_41

    const/4 p0, 0x1

    goto :goto_42

    :cond_41
    const/4 p0, 0x0

    :goto_42
    return p0

    :pswitch_43  #0x3
    check-cast p1, Lcom/android/server/wm/WindowState;

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 p1, 0x20000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_50

    const/4 p0, 0x1

    goto :goto_51

    :cond_50
    const/4 p0, 0x0

    :goto_51
    return p0

    :pswitch_52  #0x2
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz p0, :cond_5a

    const/4 p0, 0x1

    goto :goto_5b

    :cond_5a
    const/4 p0, 0x0

    :goto_5b
    return p0

    :pswitch_5c  #0x1
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    if-eqz p0, :cond_6a

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-nez p0, :cond_6a

    const/4 p0, 0x1

    goto :goto_6b

    :cond_6a
    const/4 p0, 0x0

    :goto_6b
    return p0

    :pswitch_6c  #0x0
    check-cast p1, Lcom/android/server/wm/TaskFragment;

    const/4 p0, 0x1

    invoke-virtual {p1, p0, p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    xor-int/2addr p0, p1

    return p0

    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_6c  #00000000
        :pswitch_5c  #00000001
        :pswitch_52  #00000002
        :pswitch_43  #00000003
        :pswitch_2b  #00000004
        :pswitch_24  #00000005
        :pswitch_1f  #00000006
    .end packed-switch
.end method
