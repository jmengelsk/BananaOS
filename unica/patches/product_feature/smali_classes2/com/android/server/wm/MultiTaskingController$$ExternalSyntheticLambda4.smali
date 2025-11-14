.class public final synthetic Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;Landroid/os/Message;)V
    .registers 5

    iget p0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch p0, :pswitch_data_38

    iget p0, p2, Landroid/os/Message;->arg1:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_d

    move p0, v1

    goto :goto_e

    :cond_d
    move p0, v0

    :goto_e
    iget p2, p2, Landroid/os/Message;->arg2:I

    if-eqz p2, :cond_13

    move v0, v1

    :cond_13
    invoke-interface {p1, p0, v0}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;->onWallpaperVisibilityChanged(ZZ)V

    return-void

    :pswitch_17  #0x2
    iget p0, p2, Landroid/os/Message;->arg1:I

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    invoke-interface {p1, p0}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;->onStartHomeAnimation(Z)V

    return-void

    :pswitch_22  #0x1
    iget p0, p2, Landroid/os/Message;->arg1:I

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    invoke-interface {p1, p0}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;->onFinishRecentsAnimation(Z)V

    return-void

    :pswitch_2d  #0x0
    iget p0, p2, Landroid/os/Message;->arg1:I

    if-eqz p0, :cond_33

    const/4 p0, 0x1

    goto :goto_34

    :cond_33
    const/4 p0, 0x0

    :goto_34
    invoke-interface {p1, p0}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;->onStartRecentsAnimation(Z)V

    return-void

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2d  #00000000
        :pswitch_22  #00000001
        :pswitch_17  #00000002
    .end packed-switch
.end method
