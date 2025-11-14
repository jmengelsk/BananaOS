.class public final Lcom/android/server/vibrator/VibrationStats;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAdaptiveScale:F

.field public final mCreateTimeDebug:J

.field public final mCreateUptimeMillis:J

.field public mEndTimeDebug:J

.field public mEndUptimeMillis:J

.field public mEndedByUid:I

.field public mEndedByUsage:I

.field public mInterruptedUsage:I

.field public mRepeatCount:I

.field public mStartTimeDebug:J

.field public mStartUptimeMillis:J

.field public mVibrationCompositionTotalSize:I

.field public mVibrationPwleTotalSize:I

.field public mVibratorComposeCount:I

.field public mVibratorComposePwleCount:I

.field public final mVibratorEffectsUsed:Landroid/util/SparseBooleanArray;

.field public mVibratorOffCount:I

.field public mVibratorOnCount:I

.field public mVibratorOnTotalDurationMillis:I

.field public mVibratorPerformCount:I

.field public mVibratorPerformVendorCount:I

.field public final mVibratorPrimitivesUsed:Landroid/util/SparseBooleanArray;

.field public mVibratorSetAmplitudeCount:I

.field public mVibratorSetExternalControlCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorEffectsUsed:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorPrimitivesUsed:Landroid/util/SparseBooleanArray;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mCreateUptimeMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/vibrator/VibrationStats;->mCreateTimeDebug:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mEndedByUid:I

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mEndedByUsage:I

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mInterruptedUsage:I

    return-void
.end method


# virtual methods
.method public final reportComposePrimitives(J[Landroid/os/vibrator/PrimitiveSegment;)V
    .locals 8

    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorComposeCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorComposeCount:I

    iget v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibrationCompositionTotalSize:I

    array-length v2, p3

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/vibrator/VibrationStats;->mVibrationCompositionTotalSize:I

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    const/4 v4, 0x0

    if-lez v0, :cond_1

    array-length v0, p3

    :goto_0
    if-ge v4, v0, :cond_0

    aget-object v5, p3, v4

    invoke-virtual {v5}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr p1, v6

    iget-object v6, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorPrimitivesUsed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v5

    invoke-virtual {v6, v5, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    cmp-long p3, p1, v2

    if-lez p3, :cond_2

    iget p3, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    long-to-int p1, p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorOnTotalDurationMillis:I

    return-void

    :cond_1
    array-length p1, p3

    move p2, v4

    :goto_1
    if-ge p2, p1, :cond_2

    aget-object v0, p3, p2

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationStats;->mVibratorPrimitivesUsed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v0

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
