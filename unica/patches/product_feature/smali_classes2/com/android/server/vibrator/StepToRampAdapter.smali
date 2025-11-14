.class public final Lcom/android/server/vibrator/StepToRampAdapter;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSegmentsAdapter;


# direct methods
.method public static convertStepToRamp(Landroid/os/VibratorInfo;Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;
    .registers 9

    invoke-virtual {p1}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v0

    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_18

    :cond_f
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_18

    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result v0

    :cond_18
    :goto_18
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
    .registers 9

    const-wide/16 v0, 0x400

    invoke-virtual {p1, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_7c

    :cond_a
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_12
    if-ge v1, p0, :cond_33

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v3, v2, Landroid/os/vibrator/StepSegment;

    if-eqz v3, :cond_30

    check-cast v2, Landroid/os/vibrator/StepSegment;

    invoke-virtual {v2}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_30

    invoke-static {p1, v2}, Lcom/android/server/vibrator/StepToRampAdapter;->convertStepToRamp(Landroid/os/VibratorInfo;Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_33
    :goto_33
    if-ge v0, p0, :cond_7c

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/os/vibrator/RampSegment;

    if-eqz v1, :cond_79

    add-int/lit8 v1, v0, -0x1

    :goto_3f
    if-ltz v1, :cond_5b

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v2, v2, Landroid/os/vibrator/StepSegment;

    if-eqz v2, :cond_5b

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/StepSegment;

    invoke-static {p1, v2}, Lcom/android/server/vibrator/StepToRampAdapter;->convertStepToRamp(Landroid/os/VibratorInfo;Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_3f

    :cond_5b
    add-int/lit8 v1, v0, 0x1

    :goto_5d
    if-ge v1, p0, :cond_79

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v2, v2, Landroid/os/vibrator/StepSegment;

    if-eqz v2, :cond_79

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/StepSegment;

    invoke-static {p1, v2}, Lcom/android/server/vibrator/StepToRampAdapter;->convertStepToRamp(Landroid/os/VibratorInfo;Landroid/os/vibrator/StepSegment;)Landroid/os/vibrator/RampSegment;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    :cond_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_7c
    :goto_7c
    return p3
.end method
