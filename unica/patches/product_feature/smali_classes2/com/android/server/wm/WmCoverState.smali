.class public final Lcom/android/server/wm/WmCoverState;
.super Lcom/samsung/android/cover/CoverState;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# static fields
.field public static sIsEnabled:Z

.field public static sWmCoverState:Lcom/android/server/wm/WmCoverState;


# direct methods
.method public static getInstance()Lcom/android/server/wm/WmCoverState;
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/wm/WmCoverState;->sWmCoverState:Lcom/android/server/wm/WmCoverState;

    return-object v0
.end method


# virtual methods
.method public final getWindowLayerFromTypeLw(I)I
    .locals 3

    const/16 v0, 0x833

    if-eq p1, v0, :cond_0

    const/16 v1, 0x96b

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_2

    :cond_1
    if-eq p1, v0, :cond_3

    iget-boolean p0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0

    :cond_3
    :goto_1
    const/16 p0, 0x1a

    return p0
.end method

.method public final isFlipTypeCoverClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_1

    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    if-eqz p0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isViewCoverClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_0

    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
