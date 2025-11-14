.class public final synthetic Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget p0, p0, Lcom/android/server/wm/WindowState$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p0, :pswitch_data_30

    check-cast p1, Lcom/android/server/wm/WindowState$DrawHandler;

    iget-boolean p0, p1, Lcom/android/server/wm/WindowState$DrawHandler;->mIsEnteringPipFromSplit:Z

    if-eqz p0, :cond_11

    iget p0, p1, Lcom/android/server/wm/WindowState$DrawHandler;->mType:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_11

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1

    :pswitch_13  #0x0
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p0

    if-eqz p0, :cond_21

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_2d

    :cond_21
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatController;->mLetterboxPolicy:Lcom/android/server/wm/AppCompatLetterboxPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->getLetterboxDirection()I

    move-result p0

    if-eqz p0, :cond_2d

    const/4 p0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    return p0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_13  #00000000
    .end packed-switch
.end method
