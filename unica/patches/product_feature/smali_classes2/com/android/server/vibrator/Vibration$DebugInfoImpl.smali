.class public final Lcom/android/server/vibrator/Vibration$DebugInfoImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSession$DebugInfo;


# instance fields
.field public final mAdaptiveScale:F

.field public final mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

.field public final mCreateTime:J

.field public final mCreateUptime:J

.field public final mDurationMs:J

.field public final mEndTime:J

.field public final mOriginalEffect:Landroid/os/CombinedVibration;

.field public final mPlayedEffect:Landroid/os/CombinedVibration;

.field public final mScaleLevel:I

.field public final mStartTime:J

.field public final mStatsInfo:Lcom/android/server/vibrator/VibrationStats$StatsInfo;

.field public final mStatus:Lcom/android/server/vibrator/VibrationSession$Status;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;ILcom/android/server/vibrator/VibrationStats;Landroid/os/CombinedVibration;Landroid/os/CombinedVibration;IF)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v0, p2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/vibrator/VibrationStats$StatsInfo;

    iget v2, p2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    move-object v5, p1

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;-><init>(IIILcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationStats;)V

    iput-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStatsInfo:Lcom/android/server/vibrator/VibrationStats$StatsInfo;

    iput-object p5, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mPlayedEffect:Landroid/os/CombinedVibration;

    iput-object p6, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mOriginalEffect:Landroid/os/CombinedVibration;

    iput p7, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mScaleLevel:I

    iput p8, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mAdaptiveScale:F

    iput-object v5, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    iget-wide p1, v6, Lcom/android/server/vibrator/VibrationStats;->mCreateUptimeMillis:J

    iput-wide p1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCreateUptime:J

    iget-wide p3, v6, Lcom/android/server/vibrator/VibrationStats;->mCreateTimeDebug:J

    iput-wide p3, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCreateTime:J

    iget-wide p3, v6, Lcom/android/server/vibrator/VibrationStats;->mStartTimeDebug:J

    iput-wide p3, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStartTime:J

    iget-wide p3, v6, Lcom/android/server/vibrator/VibrationStats;->mEndTimeDebug:J

    iput-wide p3, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mEndTime:J

    iget-wide p3, v6, Lcom/android/server/vibrator/VibrationStats;->mEndUptimeMillis:J

    const-wide/16 p5, 0x0

    cmp-long p5, p3, p5

    if-lez p5, :cond_41

    sub-long/2addr p3, p1

    goto :goto_43

    :cond_41
    const-wide/16 p3, -0x1

    :goto_43
    iput-wide p3, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mDurationMs:J

    return-void
.end method

.method public static dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration;)V
    .registers 13

    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object p3

    check-cast p3, Landroid/os/CombinedVibration$Sequential;

    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    const/4 v0, 0x0

    move v1, v0

    :goto_14
    invoke-virtual {p3}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8e

    invoke-virtual {p3}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/CombinedVibration;

    instance-of v3, v2, Landroid/os/CombinedVibration$Mono;

    const-wide v4, 0x20500000002L

    const-wide v6, 0x20b00000001L

    if-eqz v3, :cond_47

    check-cast v2, Landroid/os/CombinedVibration$Mono;

    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/os/CombinedVibration$Mono;->getEffect()Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;Landroid/os/VibrationEffect;)V

    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_7a

    :cond_47
    instance-of v3, v2, Landroid/os/CombinedVibration$Stereo;

    if-eqz v3, :cond_7a

    check-cast v2, Landroid/os/CombinedVibration$Stereo;

    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    move v3, v0

    :goto_52
    invoke-virtual {v2}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v3, v8, :cond_77

    invoke-virtual {v2}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {p0, v4, v5, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v2}, Landroid/os/CombinedVibration$Stereo;->getEffects()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/VibrationEffect;

    invoke-static {p0, v8}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;Landroid/os/VibrationEffect;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    :cond_77
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_7a
    :goto_7a
    invoke-virtual {p3}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_8e
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public static dumpEffect(Landroid/util/proto/ProtoOutputStream;Landroid/os/VibrationEffect;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Landroid/os/VibrationEffect$Composed;

    if-eqz v2, :cond_11f

    check-cast v1, Landroid/os/VibrationEffect$Composed;

    const-wide v2, 0x20b00000001L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_110

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/vibrator/VibrationEffectSegment;

    const-wide v8, 0x10b00000001L

    invoke-virtual {v0, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    instance-of v12, v5, Landroid/os/vibrator/StepSegment;

    const-wide v6, 0x10200000002L

    const-wide v8, 0x10500000001L

    if-eqz v12, :cond_68

    check-cast v5, Landroid/os/vibrator/StepSegment;

    const-wide v13, 0x10b00000003L

    invoke-virtual {v0, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    invoke-virtual {v5}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v14

    invoke-virtual {v0, v8, v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v5}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    invoke-virtual {v5}, Landroid/os/vibrator/StepSegment;->getFrequencyHz()F

    move-result v5

    const-wide v6, 0x10200000003L

    invoke-virtual {v0, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_10b

    :cond_68
    instance-of v12, v5, Landroid/os/vibrator/RampSegment;

    if-eqz v12, :cond_ad

    check-cast v5, Landroid/os/vibrator/RampSegment;

    const-wide v12, 0x10b00000004L

    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    invoke-virtual {v5}, Landroid/os/vibrator/RampSegment;->getDuration()J

    move-result-wide v14

    invoke-virtual {v0, v8, v9, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v5}, Landroid/os/vibrator/RampSegment;->getStartAmplitude()F

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    invoke-virtual {v5}, Landroid/os/vibrator/RampSegment;->getEndAmplitude()F

    move-result v6

    const-wide v7, 0x10200000003L

    invoke-virtual {v0, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v6, 0x10200000004L

    invoke-virtual {v5}, Landroid/os/vibrator/RampSegment;->getStartFrequencyHz()F

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    const-wide v6, 0x10200000005L

    invoke-virtual {v5}, Landroid/os/vibrator/RampSegment;->getEndFrequencyHz()F

    move-result v5

    invoke-virtual {v0, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_10b

    :cond_ad
    instance-of v12, v5, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v12, :cond_df

    check-cast v5, Landroid/os/vibrator/PrebakedSegment;

    const-wide v6, 0x10b00000001L

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    invoke-virtual {v5}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v12

    invoke-virtual {v0, v8, v9, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v5}, Landroid/os/vibrator/PrebakedSegment;->getEffectStrength()I

    move-result v8

    const-wide v13, 0x10500000002L

    invoke-virtual {v0, v13, v14, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v5}, Landroid/os/vibrator/PrebakedSegment;->shouldFallback()Z

    move-result v5

    const-wide v8, 0x10500000003L

    invoke-virtual {v0, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_10b

    :cond_df
    instance-of v12, v5, Landroid/os/vibrator/PrimitiveSegment;

    if-eqz v12, :cond_10b

    check-cast v5, Landroid/os/vibrator/PrimitiveSegment;

    const-wide v12, 0x10b00000002L

    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    invoke-virtual {v5}, Landroid/os/vibrator/PrimitiveSegment;->getPrimitiveId()I

    move-result v14

    invoke-virtual {v0, v8, v9, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v5}, Landroid/os/vibrator/PrimitiveSegment;->getScale()F

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    invoke-virtual {v5}, Landroid/os/vibrator/PrimitiveSegment;->getDelay()I

    move-result v5

    const-wide v8, 0x10500000003L

    invoke-virtual {v0, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_10b
    :goto_10b
    invoke-virtual {v0, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_1b

    :cond_110
    invoke-virtual {v1}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v1

    const-wide v13, 0x10500000002L

    invoke-virtual {v0, v13, v14, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_11f
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .registers 9

    const-string/jumbo v0, "Vibration:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "status = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "durationMs = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mDurationMs:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "createTime = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCreateTime:J

    const/4 v1, 0x1

    invoke-static {v3, v4, v1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startTime = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStartTime:J

    invoke-static {v3, v4, v1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "endTime = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mEndTime:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_7e

    const/4 v1, 0x0

    goto :goto_82

    :cond_7e
    invoke-static {v3, v4, v1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    :goto_82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "playedEffect = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mPlayedEffect:Landroid/os/CombinedVibration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "originalEffect = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mOriginalEffect:Landroid/os/CombinedVibration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "scale = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mScaleLevel:I

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationScaler;->scaleLevelToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mAdaptiveScale:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%.2f"

    invoke-static {v2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "adaptiveScale = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "callerInfo = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final dump(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10300000001L

    iget-wide v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStartTime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000002L

    iget-wide v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mEndTime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000007L

    iget-wide v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mDurationMs:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-wide v1, 0x10e00000008L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10b00000005L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v2, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v3

    const-wide v4, 0x10500000001L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000002L

    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getAudioUsage()I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000003L

    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mPlayedEffect:Landroid/os/CombinedVibration;

    if-eqz v0, :cond_70

    const-wide v1, 0x10b00000003L

    invoke-static {p1, v1, v2, v0}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration;)V

    :cond_70
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mOriginalEffect:Landroid/os/CombinedVibration;

    if-eqz p0, :cond_7c

    const-wide v0, 0x10b00000004L

    invoke-static {p1, v0, v1, p0}, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->dumpEffect(Landroid/util/proto/ProtoOutputStream;JLandroid/os/CombinedVibration;)V

    :cond_7c
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpCompact(Landroid/util/IndentingPrintWriter;)V
    .registers 15

    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mPlayedEffect:Landroid/os/CombinedVibration;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-wide v4, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCreateTime:J

    invoke-static {v4, v5, v1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_18

    const-string/jumbo v0, "external"

    :goto_16
    move-object v7, v0

    goto :goto_1c

    :cond_18
    const-string/jumbo v0, "effect"

    goto :goto_16

    :goto_1c
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    iget-wide v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mDurationMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v10, v0, v4

    const-string v12, ""

    if-nez v10, :cond_38

    move-object v10, v12

    goto :goto_3d

    :cond_38
    invoke-static {v0, v1, v2}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    :goto_3d
    iget-wide v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mEndTime:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_45

    move-object v11, v12

    goto :goto_4a

    :cond_45
    invoke-static {v0, v1, v2}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    :goto_4a
    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s | %8s | %20s | duration: %5dms | start: %12s | end: %12s"

    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mScaleLevel:I

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationScaler;->scaleLevelToString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mAdaptiveScale:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v5, v4, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v5}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v6}, Landroid/os/VibrationAttributes;->usageToString()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v1, v2, v5, v6}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " | scale: %8s (adaptive=%.2f) | flags: %4s | usage: %s"

    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v4, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v2}, Landroid/os/VibrationAttributes;->getOriginalAudioUsage()I

    move-result v2

    if-eqz v2, :cond_9d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " | audioUsage="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v3}, Landroid/os/VibrationAttributes;->getOriginalAudioUsage()I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_9d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", deviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->deviceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") | reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->reason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mPlayedEffect:Landroid/os/CombinedVibration;

    const/4 v4, 0x0

    if-nez v3, :cond_d2

    move-object v3, v4

    goto :goto_d6

    :cond_d2
    invoke-virtual {v3}, Landroid/os/CombinedVibration;->toDebugString()Ljava/lang/String;

    move-result-object v3

    :goto_d6
    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mOriginalEffect:Landroid/os/CombinedVibration;

    if-nez p0, :cond_db

    goto :goto_df

    :cond_db
    invoke-virtual {p0}, Landroid/os/CombinedVibration;->toDebugString()Ljava/lang/String;

    move-result-object v4

    :goto_df
    const-string p0, " | played: "

    const-string v5, " | original: "

    invoke-static {p0, v3, v5, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    return-object p0
.end method

.method public final getCreateUptimeMillis()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCreateUptime:J

    return-wide v0
.end method

.method public final getDumpAggregationKey()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mPlayedEffect:Landroid/os/CombinedVibration;

    return-object p0
.end method

.method public final getStatus()Lcom/android/server/vibrator/VibrationSession$Status;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0
.end method

.method public final logMetrics(Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;)V
    .registers 11

    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mAdaptiveScale:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_16

    sget-object v2, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sAdaptiveHapticScaleHistogram:Lcom/android/modules/expresslog/Histogram;

    invoke-virtual {v2, v0, v1}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    :cond_16
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStatsInfo:Lcom/android/server/vibrator/VibrationStats$StatsInfo;

    iget-object v1, p1, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1b
    iget-object v2, p1, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationStatsQueue:Ljava/util/Queue;

    check-cast v2, Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_28

    move v4, v3

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    :goto_29
    int-to-long v5, v2

    iget-wide v7, p1, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationReportedQueueMaxSize:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_3a

    iget-object v5, p1, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationStatsQueue:Ljava/util/Queue;

    check-cast v5, Ljava/util/ArrayDeque;

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    goto :goto_3a

    :catchall_38
    move-exception p0

    goto :goto_7c

    :cond_3a
    :goto_3a
    iget-wide v5, p1, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mLastVibrationReportedLogUptime:J

    iget-wide v7, p1, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mVibrationReportedLogIntervalMillis:J

    add-long/2addr v5, v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_1b .. :try_end_4b} :catchall_38

    add-int/2addr v2, v3

    const/16 v0, 0xc8

    if-ne v2, v0, :cond_58

    const-string/jumbo v0, "VibratorFrameworkStatsLogger"

    const-string v1, " Approaching vibration metrics queue limit, events might be dropped."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    if-eqz v4, :cond_61

    iget-object v0, p1, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mConsumeVibrationStatsQueueRunnable:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_61
    iget-object p1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget p1, p1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mOriginalEffect:Landroid/os/CombinedVibration;

    if-eqz v0, :cond_6a

    goto :goto_6c

    :cond_6a
    iget-object v0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mPlayedEffect:Landroid/os/CombinedVibration;

    :goto_6c
    if-nez v0, :cond_6f

    goto :goto_7b

    :cond_6f
    invoke-static {p1, v0}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->logVibrationSizeOfVendorEffects(ILandroid/os/CombinedVibration;)Z

    move-result p0

    if-eqz p0, :cond_7b

    const-string/jumbo p0, "vibrator.value_vibration_vendor_effect_requests"

    invoke-static {p0, p1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    :cond_7b
    :goto_7b
    return-void

    :goto_7c
    :try_start_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_38

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "createTime: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCreateTime:J

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStartTime:J

    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x0

    iget-wide v4, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mEndTime:J

    cmp-long v1, v4, v1

    if-nez v1, :cond_2f

    const/4 v1, 0x0

    goto :goto_33

    :cond_2f
    invoke-static {v4, v5, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    :goto_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", durationMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mDurationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playedEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mPlayedEffect:Landroid/os/CombinedVibration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", originalEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mOriginalEffect:Landroid/os/CombinedVibration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scaleLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mScaleLevel:I

    invoke-static {v1}, Lcom/android/server/vibrator/VibrationScaler;->scaleLevelToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adaptiveScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mAdaptiveScale:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%.2f"

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callerInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/Vibration$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
