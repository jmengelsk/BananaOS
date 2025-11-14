.class public final Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;
.super Ljava/lang/Object;
.source "qb/101018360 7b7946797bfd479541f742ead1798f62b8a16d6041b65e4a51e8631f09d3d327"

# interfaces
.implements Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;


# instance fields
.field public final mInfo:Lcom/android/server/vibrator/VibrationSession$DebugInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSession$DebugInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;->mInfo:Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;->mInfo:Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    invoke-interface {p0, p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->dumpCompact(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public final dump(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;->mInfo:Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    return-void
.end method

.method public final getCreateUptimeMs()J
    .locals 2

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;->mInfo:Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getCreateUptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getGroupKey()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;->mInfo:Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result p0

    return p0
.end method

.method public final mayAggregate(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;

    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;->mInfo:Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService$VibrationRecord;->mInfo:Lcom/android/server/vibrator/VibrationSession$DebugInfo;

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v1

    iget v1, v1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->uid:I

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getCallerInfo()Lcom/android/server/vibrator/VibrationSession$CallerInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/vibrator/VibrationSession$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getDumpAggregationKey()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/server/vibrator/VibrationSession$DebugInfo;->getDumpAggregationKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
