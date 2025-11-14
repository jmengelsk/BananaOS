.class public final Lcom/android/server/vibrator/PrimitiveSegmentsValidator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsValidator;


# virtual methods
.method public final hasValidSegments(Landroid/os/VibratorInfo;Ljava/util/List;)Z
    .registers 7

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, p0, :cond_22

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v3, :cond_1f

    check-cast v2, Landroid/os/vibrator/PrimitiveSegment;

    invoke-virtual {v2}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    move-result v2

    if-nez v2, :cond_1f

    return v0

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_22
    const/4 p0, 0x1

    return p0
.end method
