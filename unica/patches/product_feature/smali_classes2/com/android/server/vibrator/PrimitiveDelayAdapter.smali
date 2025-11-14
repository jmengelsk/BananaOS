.class public final Lcom/android/server/vibrator/PrimitiveDelayAdapter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# virtual methods
.method public final adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .registers 14

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_9
    if-ge v1, p0, :cond_7d

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/vibrator/VibrationEffectSegment;

    if-ne v1, p3, :cond_14

    move v2, v0

    :cond_14
    instance-of v4, v3, Landroid/os/vibrator/PrimitiveSegment;

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_66

    move-object v4, v3

    check-cast v4, Landroid/os/vibrator/PrimitiveSegment;

    invoke-virtual {v4}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v8

    if-nez v8, :cond_25

    goto :goto_66

    :cond_25
    invoke-virtual {v4}, Landroid/os/vibrator/PrimitiveSegment;->getDelayType()I

    move-result v3

    if-ne v3, v7, :cond_31

    invoke-virtual {v4}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result v3

    add-int/2addr v3, v2

    goto :goto_35

    :cond_31
    invoke-virtual {v4}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result v3

    :goto_35
    if-ltz v3, :cond_59

    new-instance v2, Landroid/os/vibrator/PrimitiveSegment;

    invoke-virtual {v4}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v8

    invoke-virtual {v4}, Landroid/os/vibrator/PrimitiveSegment;->getScale()F

    move-result v9

    invoke-direct {v2, v8, v9, v3, v0}, Landroid/os/vibrator/PrimitiveSegment;-><init>(IFII)V

    invoke-virtual {p2, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, p1}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration(Landroid/os/VibratorInfo;)J

    move-result-wide v2

    cmp-long v5, v2, v5

    if-gez v5, :cond_51

    :goto_4f
    move v2, v0

    goto :goto_57

    :cond_51
    long-to-int v2, v2

    invoke-virtual {v4}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result v3

    :goto_56
    sub-int/2addr v2, v3

    :cond_57
    :goto_57
    neg-int v2, v2

    goto :goto_7b

    :cond_59
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-le p3, v1, :cond_60

    add-int/lit8 p3, p3, -0x1

    :cond_60
    add-int/lit8 p0, p0, -0x1

    add-int/lit8 v1, v1, -0x1

    move v2, v3

    goto :goto_7b

    :cond_66
    :goto_66
    invoke-virtual {v3, p1}, Landroid/os/vibrator/VibrationEffectSegment;->getDuration(Landroid/os/VibratorInfo;)J

    move-result-wide v8

    cmp-long v2, v8, v5

    if-gez v2, :cond_6f

    goto :goto_4f

    :cond_6f
    long-to-int v2, v8

    instance-of v4, v3, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v4, :cond_57

    check-cast v3, Landroid/os/vibrator/PrimitiveSegment;

    invoke-virtual {v3}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result v3

    goto :goto_56

    :goto_7b
    add-int/2addr v1, v7

    goto :goto_9

    :cond_7d
    return p3
.end method
