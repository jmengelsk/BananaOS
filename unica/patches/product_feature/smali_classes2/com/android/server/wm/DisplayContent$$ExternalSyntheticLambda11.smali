.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    iput p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda11;->$r8$classId:I

    iput p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda11;->f$0:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    iget v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda11;->$r8$classId:I

    iget p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda11;->f$0:I

    packed-switch v0, :pswitch_data_40

    check-cast p1, Lcom/android/server/wm/WindowState;

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_1f

    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, p0, :cond_1f

    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-nez p0, :cond_1f

    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    if-nez p0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return p0

    :pswitch_21  #0x1
    check-cast p1, Lcom/android/server/wm/WindowState;

    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, p0, :cond_2f

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result p0

    if-eqz p0, :cond_2f

    const/4 p0, 0x1

    goto :goto_30

    :cond_2f
    const/4 p0, 0x0

    :goto_30
    return p0

    :pswitch_31  #0x0
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne p1, p0, :cond_3d

    const/4 p0, 0x1

    goto :goto_3e

    :cond_3d
    const/4 p0, 0x0

    :goto_3e
    return p0

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_31  #00000000
        :pswitch_21  #00000001
    .end packed-switch
.end method
