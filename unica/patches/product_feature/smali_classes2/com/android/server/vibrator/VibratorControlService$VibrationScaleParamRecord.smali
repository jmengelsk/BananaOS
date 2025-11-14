.class public final Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;


# instance fields
.field public final mCreateTime:J

.field public final mOperation:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

.field public final mScale:F

.field public final mTypesMask:I


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;JIF)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mOperation:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    iput-wide p2, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mCreateTime:J

    iput p4, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mTypesMask:I

    iput p5, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mScale:F

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .registers 10

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    sget-object v1, Lcom/android/server/vibrator/VibratorControlService;->DEBUG_DATE_TIME_FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mCreateTime:J

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mOperation:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mScale:F

    const/high16 v4, -0x40800000  # -1.0f

    cmpl-float v4, v3, v4

    if-nez v4, :cond_2b

    const-string v3, ""

    goto :goto_39

    :cond_2b
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%.2f"

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_39
    iget p0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mTypesMask:I

    int-to-long v4, p0

    invoke-static {v4, v5}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorControlService;->mapFromAdaptiveVibrationTypeToVibrationUsages(I)[I

    move-result-object p0

    const/4 v6, 0x0

    :goto_4a
    array-length v7, p0

    if-ge v6, v7, :cond_60

    if-lez v6, :cond_54

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_54
    aget v7, p0, v6

    invoke-static {v7}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    :cond_60
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, v2, v3, v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%s | %6s | scale: %5s | typesMask: %6s | usages: %s"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dump(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10300000002L

    iget-wide v2, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mCreateTime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    sget-object v0, Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;->PULL:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mOperation:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    if-ne v1, v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    const-wide v1, 0x10800000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    iget v4, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mTypesMask:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10200000002L

    iget p0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mScale:F

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final getCreateUptimeMs()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mCreateTime:J

    return-wide v0
.end method

.method public final getGroupKey()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final mayAggregate(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Z
    .registers 4

    instance-of v0, p1, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;

    iget v0, p1, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mTypesMask:I

    iget v1, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mTypesMask:I

    if-ne v1, v0, :cond_14

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mOperation:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    iget-object p1, p1, Lcom/android/server/vibrator/VibratorControlService$VibrationScaleParamRecord;->mOperation:Lcom/android/server/vibrator/VibratorControlService$VibrationParamsRecords$Operation;

    if-ne p0, p1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method
