.class public final Lcom/android/server/vibrator/PwleSegmentsValidator;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsValidator;


# virtual methods
.method public final hasValidSegments(Landroid/os/VibratorInfo;Ljava/util/List;)Z
    .locals 6

    const-wide/16 v0, 0x1000

    invoke-virtual {p1, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result p0

    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->getMinFrequencyHz()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/VibratorInfo$FrequencyProfile;->getMaxFrequencyHz()F

    move-result p1

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v5, v4, Landroid/os/vibrator/BasicPwleSegment;

    if-eqz v5, :cond_1

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v5, v4, Landroid/os/vibrator/PwleSegment;

    if-eqz v5, :cond_0

    check-cast v4, Landroid/os/vibrator/PwleSegment;

    if-eqz p0, :cond_2

    invoke-virtual {v4}, Landroid/os/vibrator/PwleSegment;->getStartFrequencyHz()F

    move-result v5

    cmpg-float v5, v5, v0

    if-ltz v5, :cond_2

    invoke-virtual {v4}, Landroid/os/vibrator/PwleSegment;->getStartFrequencyHz()F

    move-result v5

    cmpl-float v5, v5, p1

    if-gtz v5, :cond_2

    invoke-virtual {v4}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v5

    cmpg-float v5, v5, v0

    if-ltz v5, :cond_2

    invoke-virtual {v4}, Landroid/os/vibrator/PwleSegment;->getEndFrequencyHz()F

    move-result v4

    cmpl-float v4, v4, p1

    if-lez v4, :cond_0

    :cond_2
    :goto_0
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
