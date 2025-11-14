.class public final synthetic Lcom/android/server/wm/DragState$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda8;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget p0, p0, Lcom/android/server/wm/DragState$$ExternalSyntheticLambda8;->$r8$classId:I

    packed-switch p0, :pswitch_data_3a

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    if-gtz p1, :cond_e

    goto :goto_17

    :cond_e
    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    if-nez p1, :cond_17

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    :cond_17
    :goto_17
    return-void

    :pswitch_18  #0x1
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    return-void

    :pswitch_23  #0x0
    check-cast p1, Landroid/animation/ValueAnimator;

    :try_start_25
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2e} :catch_2f

    goto :goto_39

    :catch_2f
    move-exception p0

    const-string/jumbo p1, "WindowManager"

    const-string/jumbo v0, "Unable to cancel animator"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_39
    return-void

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_23  #00000000
        :pswitch_18  #00000001
    .end packed-switch
.end method
