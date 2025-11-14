.class public final Lcom/android/server/vibrator/StepToRampAdapter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# direct methods
.method public static convertStepToRamp(Landroid/os/VibratorInfo;Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;
    .locals 7

    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v0

    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result v0

    :cond_1
    :goto_0
    move v4, v0

    new-instance v1, Landroid/os/vibrator/RampSegment;

    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v3

    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide p0

    long-to-int v6, p0

    move v5, v4

    invoke-direct/range {v1 .. v6}, Landroid/os/vibrator/RampSegment;-><init>(FFFFI)V

    return-object v1
.end method


# virtual methods
.method public final adaptToVibrator(Landroid/os/VibratorInfo;Ljava/util/List;I)I
    .locals 5

    const-wide/16 v0, 0x400

    invoke-virtual {p1, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_4

    :cond_0
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v3, v2, Landroid/os/vibrator/StepSegment;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v2}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    invoke-static {p1, v2}, Lcom/android/server/vibrator/StepToRampAdapter;->convertStepToRamp(Landroid/os/VibratorInfo;Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v0, p0, :cond_5

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/os/vibrator/RampSegment;

    if-eqz v1, :cond_4

    add-int/lit8 v1, v0, -0x1

    :goto_2
    if-ltz v1, :cond_3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v2, v2, Landroid/os/vibrator/StepSegment;

    if-eqz v2, :cond_3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/StepSegment;

    invoke-static {p1, v2}, Lcom/android/server/vibrator/StepToRampAdapter;->convertStepToRamp(Landroid/os/VibratorInfo;Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v0, 0x1

    :goto_3
    if-ge v1, p0, :cond_4

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v2, v2, Landroid/os/vibrator/StepSegment;

    if-eqz v2, :cond_4

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/StepSegment;

    invoke-static {p1, v2}, Lcom/android/server/vibrator/StepToRampAdapter;->convertStepToRamp(Landroid/os/VibratorInfo;Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    return p3
.end method
