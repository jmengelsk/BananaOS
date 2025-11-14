.class public final Lcom/android/server/vibrator/VibrationStats$StatsInfo;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public final adaptiveScale:F

.field public final endLatencyMillis:I

.field public final endedBySameUid:Z

.field public final endedByUsage:I

.field public final halComposeCount:I

.field public final halComposePwleCount:I

.field public final halCompositionSize:I

.field public final halOffCount:I

.field public final halOnCount:I

.field public final halPerformCount:I

.field public final halPerformVendorCount:I

.field public final halPwleSize:I

.field public final halSetAmplitudeCount:I

.field public final halSetExternalControlCount:I

.field public final halSupportedCompositionPrimitivesUsed:[I

.field public final halSupportedEffectsUsed:[I

.field public final halUnsupportedCompositionPrimitivesUsed:[I

.field public final halUnsupportedEffectsUsed:[I

.field public final interruptedUsage:I

.field public mIsWritten:Z

.field public final repeatCount:I

.field public final startLatencyMillis:I

.field public final status:I

.field public final totalDurationMillis:I

.field public final uid:I

.field public final usage:I

.field public final vibrationType:I

.field public final vibratorOnMillis:I


# direct methods
.method public constructor <init>(IIILcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationStats;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->uid:I

    iput p2, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->vibrationType:I

    iput p3, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->usage:I

    invoke-virtual {p4}, Lcom/android/server/vibrator/VibrationSession$Status;->getProtoEnumValue()I

    move-result p2

    iput p2, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->status:I

    iget p2, p5, Lcom/android/server/vibrator/VibrationStats;->mAdaptiveScale:F

    iput p2, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->adaptiveScale:F

    iget p2, p5, Lcom/android/server/vibrator/VibrationStats;->mEndedByUid:I

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-ne p1, p2, :cond_1b

    move p1, p3

    goto :goto_1c

    :cond_1b
    move p1, p4

    :goto_1c
    iput-boolean p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endedBySameUid:Z

    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mEndedByUsage:I

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endedByUsage:I

    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mInterruptedUsage:I

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->interruptedUsage:I

    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mRepeatCount:I

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->repeatCount:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v0, p5, Lcom/android/server/vibrator/VibrationStats;->mCreateUptimeMillis:J

    sub-long v2, p1, v0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->totalDurationMillis:I

    iget v2, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    iput v2, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->vibratorOnMillis:I

    iget-wide v2, p5, Lcom/android/server/vibrator/VibrationStats;->mStartUptimeMillis:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_58

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->startLatencyMillis:I

    iget-wide v0, p5, Lcom/android/server/vibrator/VibrationStats;->mEndUptimeMillis:J

    sub-long/2addr p1, v0

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endLatencyMillis:I

    goto :goto_5c

    :cond_58
    iput p4, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->endLatencyMillis:I

    iput p4, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->startLatencyMillis:I

    :goto_5c
    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorComposeCount:I

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halComposeCount:I

    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorComposePwleCount:I

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halComposePwleCount:I

    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnCount:I

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halOnCount:I

    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorOffCount:I

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halOffCount:I

    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorPerformCount:I

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPerformCount:I

    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorPerformVendorCount:I

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPerformVendorCount:I

    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorSetAmplitudeCount:I

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSetAmplitudeCount:I

    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorSetExternalControlCount:I

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSetExternalControlCount:I

    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibrationCompositionTotalSize:I

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halCompositionSize:I

    iget p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibrationPwleTotalSize:I

    iput p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halPwleSize:I

    iget-object p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorPrimitivesUsed:Landroid/util/SparseBooleanArray;

    invoke-static {p1, p3}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->filteredKeys(Landroid/util/SparseBooleanArray;Z)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSupportedCompositionPrimitivesUsed:[I

    iget-object p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorEffectsUsed:Landroid/util/SparseBooleanArray;

    invoke-static {p1, p3}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->filteredKeys(Landroid/util/SparseBooleanArray;Z)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halSupportedEffectsUsed:[I

    iget-object p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorPrimitivesUsed:Landroid/util/SparseBooleanArray;

    invoke-static {p1, p4}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->filteredKeys(Landroid/util/SparseBooleanArray;Z)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halUnsupportedCompositionPrimitivesUsed:[I

    iget-object p1, p5, Lcom/android/server/vibrator/VibrationStats;->mVibratorEffectsUsed:Landroid/util/SparseBooleanArray;

    invoke-static {p1, p4}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->filteredKeys(Landroid/util/SparseBooleanArray;Z)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->halUnsupportedEffectsUsed:[I

    return-void
.end method

.method public static filteredKeys(Landroid/util/SparseBooleanArray;Z)[I
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_3
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_14

    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-ne v3, p1, :cond_11

    add-int/lit8 v2, v2, 0x1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_14
    if-nez v2, :cond_18

    const/4 p0, 0x0

    return-object p0

    :cond_18
    new-array v1, v2, [I

    move v2, v0

    :goto_1b
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_33

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-ne v3, p1, :cond_30

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    aput v4, v1, v2

    move v2, v3

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_33
    return-object v1
.end method


# virtual methods
.method public isWritten()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/vibrator/VibrationStats$StatsInfo;->mIsWritten:Z

    return p0
.end method
