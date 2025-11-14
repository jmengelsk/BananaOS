.class public final Lcom/android/server/vibrator/HalVibration;
.super Lcom/android/server/vibrator/Vibration;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"


# instance fields
.field public mAdaptiveScale:F

.field public final mCommonData:[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

.field public final mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

.field public volatile mEffectToPlay:Landroid/os/CombinedVibration;

.field public final mEngineData:[I

.field public final mFallbacks:Landroid/util/SparseArray;

.field public mMagnitude:I

.field public final mOriginalEffect:Landroid/os/CombinedVibration;

.field public mScaleLevel:I

.field public final mTimeout:J


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/vibrator/Vibration;-><init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/vibrator/HalVibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/vibrator/HalVibration;->mTimeout:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/vibrator/HalVibration;->mEngineData:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/vibrator/HalVibration;->mMagnitude:I

    iput-object p1, p0, Lcom/android/server/vibrator/HalVibration;->mCommonData:[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    iput-object p2, p0, Lcom/android/server/vibrator/HalVibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    iput-object p2, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    iput v0, p0, Lcom/android/server/vibrator/HalVibration;->mScaleLevel:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/server/vibrator/HalVibration;->mAdaptiveScale:F

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;JI[I[Lcom/samsung/android/server/vibrator/CommonPatternInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/HalVibration;-><init>(Lcom/android/server/vibrator/VibrationSession$CallerInfo;Landroid/os/CombinedVibration;)V

    iput-wide p3, p0, Lcom/android/server/vibrator/HalVibration;->mTimeout:J

    iput p5, p0, Lcom/android/server/vibrator/HalVibration;->mMagnitude:I

    iput-object p6, p0, Lcom/android/server/vibrator/HalVibration;->mEngineData:[I

    iput-object p7, p0, Lcom/android/server/vibrator/HalVibration;->mCommonData:[Lcom/samsung/android/server/vibrator/CommonPatternInfo;

    return-void
.end method


# virtual methods
.method public final end(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/vibrator/Vibration;->end(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    iget-object p0, p0, Lcom/android/server/vibrator/HalVibration;->mCompletionLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final fillFallbacksForEffect(Landroid/os/CombinedVibration;Ljava/util/function/IntFunction;)V
    .locals 2

    instance-of v0, p1, Landroid/os/CombinedVibration$Mono;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {p1}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vibrator/HalVibration;->fillFallbacksForEffect(Landroid/os/VibrationEffect;Ljava/util/function/IntFunction;)V

    return-void

    :cond_0
    instance-of v0, p1, Landroid/os/CombinedVibration$Stereo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Landroid/os/CombinedVibration$Stereo;

    invoke-virtual {p1}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/vibrator/HalVibration;->fillFallbacksForEffect(Landroid/os/VibrationEffect;Ljava/util/function/IntFunction;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Landroid/os/CombinedVibration$Sequential;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {p1}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CombinedVibration;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/vibrator/HalVibration;->fillFallbacksForEffect(Landroid/os/CombinedVibration;Ljava/util/function/IntFunction;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final fillFallbacksForEffect(Landroid/os/VibrationEffect;Ljava/util/function/IntFunction;)V
    .locals 5

    instance-of v0, p1, Landroid/os/VibrationEffect$Composed;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/os/VibrationEffect$Composed;

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    instance-of v3, v2, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/os/vibrator/PrebakedSegment;

    invoke-virtual {v2}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v3

    invoke-interface {p2, v3}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/VibrationEffect;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v2

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getDebugInfo()Lcom/android/server/vibrator/VibrationSession$DebugInfo;
    .locals 10

    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    iget-object v1, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mOriginalEffect:Landroid/os/CombinedVibration;

    goto :goto_0

    :goto_1
    new-instance v1, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;

    iget-object v2, p0, Lcom/android/server/vibrator/Vibration;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    iget-object v3, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v0, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    const/4 v4, 0x1

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/os/CombinedVibration;->hasVendorEffects()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x4

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/os/CombinedVibration;->getDuration()J

    move-result-wide v5

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v0, v5, v8

    if-nez v0, :cond_3

    const/4 v4, 0x2

    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    iget-object v6, p0, Lcom/android/server/vibrator/HalVibration;->mEffectToPlay:Landroid/os/CombinedVibration;

    iget v8, p0, Lcom/android/server/vibrator/HalVibration;->mScaleLevel:I

    iget v9, p0, Lcom/android/server/vibrator/HalVibration;->mAdaptiveScale:F

    invoke-direct/range {v1 .. v9}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;-><init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;ILcom/android/server/vibrator/VibrationStats;Landroid/os/CombinedVibration;Landroid/os/CombinedVibration;IF)V

    return-object v1
.end method

.method public final scaleEffects(Lcom/android/server/vibrator/VibrationScaler;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/VibrationScaler;->getScaleLevel(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/HalVibration;->mScaleLevel:I

    iget-object v1, p1, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/android/server/vibrator/HalVibration;->mAdaptiveScale:F

    iget-object v3, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_0

    iput v1, v3, Lcom/android/server/vibrator/VibrationStats;->mAdaptiveScale:F

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/vibrator/HalVibration;->mFallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/VibrationEffect;

    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/VibrationScaler;->getEffectStrength(I)I

    move-result v5

    invoke-virtual {p1, v0}, Lcom/android/server/vibrator/VibrationScaler;->getScaleLevel(I)I

    move-result v6

    invoke-static {v6}, Lcom/android/server/vibrator/VibrationScaler;->scaleLevelToScaleFactor(I)F

    move-result v6

    iget-object v7, p1, Lcom/android/server/vibrator/VibrationScaler;->mAdaptiveHapticsScales:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget v8, p1, Lcom/android/server/vibrator/VibrationScaler;->mDefaultVibrationAmplitude:I

    invoke-virtual {v4, v8}, Landroid/os/VibrationEffect;->resolve(I)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/VibrationEffect;->applyEffectStrength(I)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/VibrationEffect;->scale(F)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/VibrationEffect;->applyAdaptiveScale(F)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
