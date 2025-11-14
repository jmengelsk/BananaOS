.class public final synthetic Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget p0, p0, Lcom/android/server/wm/WindowContainer$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    packed-switch p0, :pswitch_data_5a

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    if-eqz p0, :cond_15

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0

    :pswitch_17  #0x6
    const/4 p0, 0x3

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->isAnimating(I)Z

    move-result p0

    return p0

    :pswitch_1d  #0x5
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p0, :cond_27

    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-nez p0, :cond_27

    const/4 p0, 0x1

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    return p0

    :pswitch_29  #0x4
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_2e  #0x3
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_33  #0x2
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz p0, :cond_38

    goto :goto_44

    :cond_38
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result p0

    const/4 p1, -0x2

    if-eq p0, p1, :cond_44

    const/4 p1, 0x3

    if-eq p0, p1, :cond_44

    const/4 p0, 0x1

    goto :goto_45

    :cond_44
    :goto_44
    const/4 p0, 0x0

    :goto_45
    return p0

    :pswitch_46  #0x1
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_4b  #0x0
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz p0, :cond_57

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_57

    const/4 p0, 0x1

    goto :goto_58

    :cond_57
    const/4 p0, 0x0

    :goto_58
    return p0

    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_4b  #00000000
        :pswitch_46  #00000001
        :pswitch_33  #00000002
        :pswitch_2e  #00000003
        :pswitch_29  #00000004
        :pswitch_1d  #00000005
        :pswitch_17  #00000006
    .end packed-switch
.end method
