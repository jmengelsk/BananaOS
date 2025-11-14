.class public final Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# direct methods
.method public static clampFrequency(Landroid/os/VibratorInfo;F)F
    .locals 3

    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getFrequencyProfileLegacy()Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getFrequencyRangeHz()Landroid/util/Range;

    move-result-object v0

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result p0

    return p0
.end method


# virtual methods
.method public final adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .locals 9

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_3

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v2, v1, Landroid/os/vibrator/RampSegment;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/os/vibrator/RampSegment;

    invoke-virtual {v1}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    move-result v2

    invoke-static {p1, v2}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampFrequency(Landroid/os/VibratorInfo;F)F

    move-result v6

    invoke-virtual {v1}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v2

    invoke-static {p1, v2}, Lcom/android/server/vibrator/ClippingAmplitudeAndFrequencyAdapter;->clampFrequency(Landroid/os/VibratorInfo;F)F

    move-result v7

    new-instance v3, Landroid/os/vibrator/RampSegment;

    invoke-virtual {v1}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getFrequencyProfileLegacy()Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    move v4, v2

    goto :goto_2

    :cond_0
    invoke-virtual {v4, v6}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getMaxAmplitude(F)F

    move-result v4

    invoke-static {v2, v4}, Landroid/util/MathUtils;->min(FF)F

    move-result v2

    goto :goto_1

    :goto_2
    invoke-virtual {v1}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/VibratorInfo;->getFrequencyProfileLegacy()Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :goto_3
    move v5, v2

    goto :goto_4

    :cond_1
    invoke-virtual {v5, v7}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->getMaxAmplitude(F)F

    move-result v5

    invoke-static {v2, v5}, Landroid/util/MathUtils;->min(FF)F

    move-result v2

    goto :goto_3

    :goto_4
    invoke-virtual {v1}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v1

    long-to-int v8, v1

    invoke-direct/range {v3 .. v8}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    invoke-virtual {p2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p3
.end method
