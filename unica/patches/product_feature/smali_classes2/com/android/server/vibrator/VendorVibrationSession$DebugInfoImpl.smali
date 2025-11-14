.class public final Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/vibrator/VibrationSession$DebugInfo;


# instance fields
.field public final mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

.field public final mCreateTime:J

.field public final mCreateUptime:J

.field public final mDurationMs:J

.field public final mEndTime:J

.field public final mEndedByVendor:Z

.field public final mStartTime:J

.field public final mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

.field public final mVibrations:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSession$Status;Lcom/android/server/vibrator/VibrationSession$CallerInfo;JJJJJZLjava/util/List;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    iput-object p2, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iput-wide p3, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCreateUptime:J

    iput-wide p5, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCreateTime:J

    iput-wide p7, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mStartTime:J

    iput-wide p11, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mEndTime:J

    iput-boolean p13, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mEndedByVendor:Z

    const-wide/16 p1, 0x0

    cmp-long p1, p9, p1

    if-lez p1, :cond_19

    sub-long/2addr p9, p3

    goto :goto_1b

    :cond_19
    const-wide/16 p9, -0x1

    :goto_1b
    iput-wide p9, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mDurationMs:J

    new-instance p1, Ljava/util/ArrayList;

    if-nez p14, :cond_25

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_28

    :cond_25
    invoke-direct {p1, p14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_28
    iput-object p1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mVibrations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .registers 8

    const-string/jumbo v0, "VibrationSession:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "status = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

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

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mDurationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "createTime = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCreateTime:J

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startTime = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mStartTime:J

    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "endTime = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mEndTime:J

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_7e

    const/4 v1, 0x0

    goto :goto_82

    :cond_7e
    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    :goto_82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "callerInfo = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "vibrations:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mVibrations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_af
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bf

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    invoke-interface {v0, p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_af

    :cond_bf
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final dump(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10300000002L

    iget-wide v2, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mEndTime:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000007L

    iget-wide v2, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mDurationMs:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-wide v1, 0x10e00000008L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10b00000005L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000002L

    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->getAudioUsage()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000003L

    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result p0

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpCompact(Landroid/util/IndentingPrintWriter;)V
    .registers 13

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCreateTime:J

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mDurationMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v1, v8

    const/4 v5, 0x0

    const-string v10, ""

    if-nez v3, :cond_26

    move-object v1, v10

    goto :goto_2a

    :cond_26
    invoke-static {v1, v2, v5}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    :goto_2a
    iget-wide v2, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mEndTime:J

    cmp-long v8, v2, v8

    if-nez v8, :cond_32

    move-object v9, v10

    goto :goto_37

    :cond_32
    invoke-static {v2, v3, v5}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    :goto_37
    const-string/jumbo v5, "session"

    move-object v8, v1

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s | %8s | %20s | duration: %5dms | start: %12s | end: %12s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget-object v3, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v3}, Landroid/os/VibrationAttributes;->getFlags()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v4}, Landroid/os/VibrationAttributes;->usageToString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, " | flags: %4s | usage: %s"

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v3}, Landroid/os/VibrationAttributes;->getOriginalAudioUsage()I

    move-result v3

    if-eqz v3, :cond_82

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " | audioUsage="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v4}, Landroid/os/VibrationAttributes;->getOriginalAudioUsage()I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_82
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " | "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->opPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", deviceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->deviceId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") | reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->reason:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mVibrations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    invoke-interface {v0, p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->dumpCompact(Landroid/util/IndentingPrintWriter;)V

    goto :goto_d1

    :cond_e1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    return-object p0
.end method

.method public final getCreateUptimeMillis()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCreateUptime:J

    return-wide v0
.end method

.method public final getDumpAggregationKey()Ljava/lang/Object;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStatus()Lcom/android/server/vibrator/VibrationSession$Status;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    return-object p0
.end method

.method public final logMetrics(Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;)V
    .registers 6

    iget-wide v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    iget v1, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "vibrator.value_vibration_vendor_session_started"

    invoke-static {v2, v1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mVibrations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->sVibrationVendorSessionVibrationsHistogram:Lcom/android/modules/expresslog/Histogram;

    int-to-float v1, v1

    iget v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    invoke-virtual {v2, v0, v1}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    iget-boolean v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mEndedByVendor:Z

    if-nez v1, :cond_2d

    const-string/jumbo v1, "vibrator.value_vibration_vendor_session_interrupted"

    invoke-static {v1, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    :cond_2d
    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mVibrations:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_33
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    invoke-interface {v0, p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->logMetrics(Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;)V

    goto :goto_33

    :cond_43
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "createTime: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCreateTime:J

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", startTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mStartTime:J

    invoke-static {v1, v2, v3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->formatTime(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x0

    iget-wide v4, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mEndTime:J

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

    iget-wide v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mDurationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mStatus:Lcom/android/server/vibrator/VibrationSession$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callerInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mCallerInfo:Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vibrations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vibrator/VendorVibrationSession$DebugInfoImpl;->mVibrations:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
