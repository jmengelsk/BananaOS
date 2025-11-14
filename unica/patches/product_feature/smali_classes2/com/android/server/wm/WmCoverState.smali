.class public final Lcom/android/server/wm/WmCoverState;
.super Lcom/samsung/android/cover/CoverState;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sIsEnabled:Z

.field public static sWmCoverState:Lcom/android/server/wm/WmCoverState;


# direct methods
.method public static getInstance()Lcom/android/server/wm/WmCoverState;
    .registers 1

    sget-boolean v0, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    sget-object v0, Lcom/android/server/wm/WmCoverState;->sWmCoverState:Lcom/android/server/wm/WmCoverState;

    return-object v0
.end method


# virtual methods
.method public final getWindowLayerFromTypeLw(I)I
    .registers 5

    const/16 v0, 0x833

    if-eq p1, v0, :cond_9

    const/16 v1, 0x96b

    if-eq p1, v1, :cond_9

    goto :goto_1e

    :cond_9
    iget v1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_17

    const/16 v2, 0x10

    if-eq v1, v2, :cond_17

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1e

    :cond_17
    if-eq p1, v0, :cond_20

    iget-boolean p0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez p0, :cond_1e

    goto :goto_20

    :cond_1e
    :goto_1e
    const/4 p0, -0x1

    return p0

    :cond_20
    :goto_20
    const/16 p0, 0x1a

    return p0
.end method

.method public final isFlipTypeCoverClosed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_12

    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    if-eqz p0, :cond_10

    const/4 v0, 0x7

    if-eq p0, v0, :cond_10

    const/16 v0, 0xe

    if-eq p0, v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x1

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return p0
.end method

.method public final isViewCoverClosed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_c

    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    packed-switch p0, :pswitch_data_e

    goto :goto_c

    :pswitch_a  #0xf, 0x10, 0x11
    const/4 p0, 0x1

    return p0

    :cond_c
    :goto_c
    const/4 p0, 0x0

    return p0

    :pswitch_data_e
    .packed-switch 0xf
        :pswitch_a  #0000000f
        :pswitch_a  #00000010
        :pswitch_a  #00000011
    .end packed-switch
.end method
